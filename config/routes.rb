Rails.application.routes.draw do

  get 'display/aboutus'
  get 'display/admin'
  get 'display/new'
  
  
  get 'display/list_book'
  get 'display/view_book'
  get 'display/remove_book'
  get 'display/edit_book'
  

  get 'display/add_book'
  root 'display#admin'
  get "/display", to: "display#admin"

  match ':controller(/:action(/:id(.:format)))',:via => [:get,:post]
end
