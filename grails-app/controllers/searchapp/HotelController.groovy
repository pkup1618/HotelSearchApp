package searchapp

import grails.validation.ValidationException
import org.springframework.web.bind.annotation.DeleteMapping
import org.springframework.web.bind.annotation.RequestParam
import org.springframework.web.servlet.ModelAndView

import static org.springframework.http.HttpStatus.*

class HotelController {

    HotelService hotelService

    // GET /hotels
    def index() {
        def hotels = hotelService.listHotels()
        def model = [hotels: hotels]

        render (view: "index", model: model)
    }


    // GET /hotels/$id/show
    def show(Long id) {
        def shownHotel = Hotel.findById(id)
        def model = [hotel: shownHotel]

        render(view: "show", model: model)
    }

    // GET /hotels/$id/edit
    def edit(Long id) {
        def editableHotel = Hotel.findById(id)
        def countries = Country.getAll()
        def model = [hotel: editableHotel, countries: countries]

        render(view: "edit", model: model)
    }

    // POST /hotels/${id}/update
    def update(Long id) {
        hotelService.updateHotel(id, params.name, params.rating as int, params.country as int)
        redirect(controller: 'hotel', action: 'show', id: id)
    }

    // GET /hotels/$id/delete
    def delete(Long id) {
        hotelService.deleteHotel(id)
        redirect(controller: 'hotel', action: 'index')
    }

    // GET /hotels/create
    def create() {
        def countries = Country.findAll()
        def model = [countries: countries]

        render(view: "create", model: model)
    }

    def save() {
        hotelService.saveHotel(params.name, params.rating as int, params.country as long)
        redirect(controller: 'hotel', action: 'index')
    }
}
