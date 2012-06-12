Nile::Application.routes.draw do
  get "home/index"


   root :to => 'home#index'
   match '/company/:id' => 'home#company', :as => 'company'
   match '/cause/:id' => 'home#cause', :as => 'cause'
   match '/organization/:id' => 'home#organization', :as => 'organization'


  # See how all your routes lay out with "rake routes"

  # This is a legacy wild controller route that's not recommended for RESTful applications.
  # Note: This route will make all actions in every controller accessible via GET requests.
  # match ':controller(/:action(/:id))(.:format)'
end
