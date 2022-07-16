package searchapp


class CountryController {

    CountryService countryService

    // GET country
    def index() {
        def countries = countryService.listCountry()
        def model = [countries: countries]

        render (view: "index", model: model)
    }

    // GET /country/$id/show
    def show(Long id) {
        def shownCountry = Country.findById(id)
        def model = [country: shownCountry]

        render(view: "show", model: model)
    }

    // GET /country/$id/edit
    def edit(Long id) {
        def editableCountry = Country.findById(id)
        def model = [country: editableCountry]

        render(view: "edit", model: model)
    }

    // POST /country/$id/update
    def update(Long id) {
        countryService.updateCountry(id, params.name, params.capital)
        redirect(controller: 'country', action: 'show', id: id)
    }

    // GET /country/$id/delete
    def delete(Long id) {
        countryService.deleteCountry(id)
        redirect(controller: 'country', action: 'index')

    }

    // GET /country/$id/create
    def create() {

        render(view: 'create')
    }

    def save() {
        countryService.saveCountry(params.name, params.capital)
        redirect(controller: 'country', action: 'index')
    }
}
