package searchapp

import grails.gorm.services.Service
import grails.gorm.transactions.Transactional

@Service(value = Country, name = "countryService")
class CountryService {

    def listCountry() {
        Country.list()
    }

    def updateCountry(Long id, name, capital) {
        def editableCountry = Country.findById(id)

        Country.withNewTransaction {
            editableCountry.name = name
            editableCountry.capital = capital
            editableCountry.save flush: true
        }
    }

    def deleteCountry(Long id) {
        def deletableCountry = Country.findById(id)

        Hotel.withNewTransaction() {
            Hotel.where {
                country == deletableCountry
            }.deleteAll()
        }

        Country.withNewTransaction {
            deletableCountry.delete flush: true
        }
    }

    def saveCountry(name, capital) {
        def createdCountry = new Country(name: name, capital: capital)

        Country.withNewTransaction {
            createdCountry.save flush: true
        }
    }
}
