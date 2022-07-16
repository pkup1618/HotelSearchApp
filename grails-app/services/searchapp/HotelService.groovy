package searchapp

import grails.gorm.services.Service
import org.springframework.transaction.annotation.Transactional

@Service(value = Hotel, name = "hotelService")
class HotelService {

    def listHotels() {
        Hotel.list()
    }

    def updateHotel(id, name, int rating, country) {
        def editableHotel = Hotel.findById(id)

        Hotel.withNewTransaction {
            editableHotel.name = name
            editableHotel.rating = rating
            editableHotel.country = Country.findById(country)
            editableHotel.save flush: true
        }
    }

    def deleteHotel(id) {
        def deletableHotel = Hotel.findById(id)

        Hotel.withNewTransaction() {
            deletableHotel.delete flush: true
        }
    }

    def saveHotel(name, int rating, long country) {
        def createdHotel = new Hotel(name: name, rating: rating, country: Country.findById(country))

        Hotel.withNewTransaction {
            createdHotel.save flush: true
        }
    }
}
