Rails.application.routes.draw do

  get("/users", {:controller => "users", :action => "index" })

  get("/", {:controller => "users", :action => "index" })

  get("/users/:path_username", {:controller => "users", :action => "show" })

  post("/add_user", {:controller => "users", :action => "add" })

  get("/photos", {:controller => "photos", :action => "index"})

  get("/photos/:path_id", {:controller => "photos", :action => "show"})

  get("/delete_photo/:path_id", {:controller => "photos", :action => "bai"})

  get("/insert_photo", {:controller => "photos", :action => "create"})

  get("/update_photo/:modify_id", {:controller => "photos", :action => "update"})

end
