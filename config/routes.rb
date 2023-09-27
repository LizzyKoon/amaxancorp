Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  root to: "pages#home"

  get "about", to: "pages#about"
  get "contact", to: "pages#contact"

  # Page Famille
  get '/famille', to: 'famille#index', as: 'famille'
  # Nom du fichier HTML : famille.html.erb

  # Page Entrepreneurs & Professions Libérales
  get '/entrepreneurs', to: 'entrepreneurs#index', as: 'entrepreneurs'
  # Nom du fichier HTML : entrepreneurs.html.erb

  # Page Assistance Administrative
  get '/assistance_administrative', to: 'assistance_administrative#index', as: 'assistance_administrative'
  # Nom du fichier HTML : assistance_administrative.html.erb

  # Page Placement
  get '/placement', to: 'placement#index', as: 'placement'
  # Nom du fichier HTML : placement.html.erb

  # Page Emprunt
  get '/emprunt', to: 'emprunt#index', as: 'emprunt'
  # Nom du fichier HTML : emprunt.html.erb

  # Page Fiscalité
  get '/fiscalite', to: 'fiscalite#index', as: 'fiscalite'
  # Nom du fichier HTML : fiscalite.html.erb
end
