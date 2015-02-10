Rails.application.routes.draw do
  
  
  
  get 'static_pages/home'

  get 'static_pages/help'

  # You can have the root of your site routed with "root"
 root 'application#hello'
  
  
  
end