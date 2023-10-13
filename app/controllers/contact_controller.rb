class ContactController < ApplicationController
  def new
  end

  def create
    nom = params[:nom]
    email = params[:mail]
    telephone = params[:telephone]
    expertises = params[:expertise]
    message = params[:message]

    # Traitez les données ici (par exemple, envoyez un e-mail, enregistrez-les dans une base de données, etc.)

    # Redirigez l'utilisateur vers une page de confirmation
    redirect_to contact_confirmation_path
  end

  def confirmation
    render template: 'contact/_confirmation'
  end
end
