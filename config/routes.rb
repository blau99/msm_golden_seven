Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get("/", { :controller => "movies", :action => "index" })

  get("/directors", { :controller => "directors", :action => "index" })
  get("/directors/new_form", { :controller => "directors", :action => "new_form" })
  get("/directors/:id/edit_form", { :controller => "directors", :action => "edit_form" })
  get("/update_director/:id", { :controller => "directors", :action => "update_row" })
  get("/delete_director/:id", { :controller => "directors", :action => "destroy" })
  get("/create_director", { :controller => "directors", :action => "create_row" })
  get("/directors/:id", { :controller => "directors", :action => "show" })

  get("/movies", { :controller => "movies", :action => "index" })
  get("/movies/new_form", { :controller => "movies", :action => "new_form" })
  get("/movies/:id/edit_form", { :controller => "movies", :action => "edit_form" })
  get("/update_movie/:id", { :controller => "movies", :action => "update_row" })
  get("/delete_movie/:id", { :controller => "movies", :action => "destroy" })
  get("/create_movie", { :controller => "movies", :action => "create_row" })
  get("/movies/:id", { :controller => "movies", :action => "show" })

  get("/actors", { :controller => "actors", :action => "index" })
  get("/actors/new_form", { :controller => "actors", :action => "new_form" })
  get("/actors/:id/edit_form", { :controller => "actors", :action => "edit_form" })
  get("/update_actor/:id", { :controller => "actors", :action => "update_row" })
  get("/delete_actor/:id", { :controller => "actors", :action => "destroy" })
  get("/create_actor", { :controller => "actors", :action => "create_row" })
  get("/actors/:id", { :controller => "actors", :action => "show" })

end
