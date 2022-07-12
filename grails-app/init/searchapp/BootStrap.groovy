package searchapp

class BootStrap {

    def init = { servletContext ->

        def countries_autoload =
                [new Country(name: "United Arab Emirates", capital: "Abu Dhabi"),
                 new Country(name: "Netherlands", capital: "Amsterdam"),
                 new Country(name: "Russia", capital: "Moscow")]

        def hotels_autoload =
                [new Hotel(name: "Yas Island Rotana", country: countries_autoload[0], rating: 4, ref: null),
                 new Hotel(name: "Miramar Al Aqah Beach Resort", country: countries_autoload[0], rating: 3, ref: null),
                 new Hotel(name: "Oceanic Khorfakkan Resort & SPA 4", country: countries_autoload[0], rating: 5, ref: null),
                 new Hotel(name: "InterContinental Fujairah Resort", country: countries_autoload[0], rating: 2, ref: "https://fujairah.intercontinental.com"),

                 new Hotel(name: "Hotel Jakarta a", country: countries_autoload[1], rating: 4, ref: "https://fujairah.intercontinental.com"),
                 new Hotel(name: "Hotel Jakarta b", country: countries_autoload[1], rating: 5, ref: "https://fujairah.intercontinental.com"),
                 new Hotel(name: "Hotel Jakarta e", country: countries_autoload[1], rating: 4, ref: null),
                 new Hotel(name: "Hotel Jakarta g", country: countries_autoload[1], rating: 5, ref: null),
                 new Hotel(name: "Hotel Jakarta f", country: countries_autoload[1], rating: 4, ref: null)]

        countries_autoload.each {c -> c.save() }
        hotels_autoload.each { h -> h.save() }
    }

    def destroy = {
    }
}
