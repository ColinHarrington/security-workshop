class UrlMappings {

	static mappings = {
		"/$controller/$action?/$id?(.$format)?" {
			constraints {
				// apply constraints here
			}
		}

		name home: "/"(controller: 'homepage', action: 'home')
		name about: "/about"(controller: 'homepage', action: 'about')
		name contact: "/contact"(controller: 'homepage', action: 'contact')
		"500"(view: '/error')
	}
}
