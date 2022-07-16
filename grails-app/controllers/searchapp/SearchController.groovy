package searchapp

class SearchController {

//    def search(String name, Country country) {
//        def id = params["countryId"]
//        def hotelNameSubstring = params["hotelNameSubstring"]
//
//        def hotels = Hotel.findAllByNameLikeAndCountry(
//                "%$hotelNameSubstring%", Country.findById(id))
//
//        [hotels: hotels]
//    }

    def search() {

        def hotelNameSubstring = params['hotelNameSubstring']
        def countryId = params['countryId'] as Integer
        def country = Country.findById(countryId)

        println(hotelNameSubstring)
        println(countryId)

        def results = Hotel.createCriteria().list() {
            eq("country", country)
            like("name", "%${hotelNameSubstring}%")
            order("rating", "desc")
            order("name", "asc")
        }

        [hotels: results]
    }

    def index() {
        [countries: Country.findAll()]
    }
}
