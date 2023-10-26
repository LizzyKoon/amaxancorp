Rails.application.routes.draw do
  # get 'access/Tokens'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  root to: "pages#home"

  get '/contact', to: 'contact#new'
  post '/contact', to: 'contact#create'
  get '/contact/confirmation', to: 'contact#confirmation'

  get "/apropos", to: "pages#apropos"

  get "/methodologie", to: "pages#methodologie"

  get "/expertises", to: "pages#expertises"

  get "/mentions_legales", to: "mentions_legales#index"

  get "/cookies", to: "cookies#index"

  get "/conseil", to: "pages#conseil"


  # Page Retraite
  get '/retraite', to: 'retraite#index', as: 'retraite'
  # Nom du fichier HTML : famille.html.erb

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

  # Page Impots
  get '/impots', to: 'impots#index', as: 'impots'
  # Nom du fichier HTML : impots.html.erb

    # # Route pour générer un lien temporaire
    # get '/generer-lien', to: 'access_tokens#generate', as: 'generer_lien'

    # # Route pour valider un lien temporaire
    # get '/acces/:token', to: 'access_tokens#validate', as: 'valider_acces'

end
