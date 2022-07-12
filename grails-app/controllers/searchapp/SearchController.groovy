package searchapp

class SearchController {

    def search(String name, Country country) {
        def id = params["countryId"]
        def hotelNameSubstring = params["hotelNameSubstring"]

        def hotels = Hotel.findAllByNameLikeAndCountry(
                "%$hotelNameSubstring%", Country.findById(id))

        [hotels: hotels]
    }

    def index() {
        [countries: Country.findAll()]

    }
}
