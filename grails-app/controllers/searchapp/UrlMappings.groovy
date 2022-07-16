package searchapp

class UrlMappings {

    static mappings = {
        "/$controller/$action?/$id?(.$format)?"{
            constraints {
            }
        }

        get "/country"(controller:"country", action:"index")
        get "/country/create"(controller:"country", action:"create")
        get "/country/$id/show"(controller:"country", action:"show")
        get "/country/$id/edit"(controller:"country", action:"edit")
        post "/country/$id/update"(controller:"country", action:"update")
        get "/country/$id/delete"(controller:"country", action:"delete")

        get "/hotel"(controller:"hotel", action:"index")
        get "/hotel/create"(controller:"hotel", action:"create")
        get "/hotel/$id/show"(controller:"hotel", action:"show")
        get "/hotel/$id/edit"(controller:"hotel", action:"edit")
        post "/hotel/$id/update"(controller:"hotel", action:"update")
        get "/hotel/$id/delete"(controller:"hotel", action:"delete")
        "/"(controller: 'search')
        "500"(view:'/error')
        "404"(view:'/notFound')
    }
}
