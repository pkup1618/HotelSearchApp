package searchapp

class UrlMappings {

    static mappings = {
        "/$controller/$action?/$id?(.$format)?"{
            constraints {
                // apply constraints here
            }
        }

        "/"(controller: 'search')
        "500"(view:'/error')
        "404"(view:'/notFound')
    }
}
