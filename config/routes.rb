Rails.application.routes.draw do
  get 'static_pages/home'
  
  get  '/pricing',   to: 'static_pages#pricing'
  
  get  '/about',   to: 'static_pages#about'
  
  get  '/contact',   to: 'static_pages#contact'

  get  '/demo',   to: 'static_pages#demo'
  
  get  '/staffright',   to: 'static_pages#staffright'
  
  get  '/agilecast',   to: 'static_pages#agilecast'
  
  get  '/privacy',   to: 'static_pages#privacy'
  
  root 'static_pages#home'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
