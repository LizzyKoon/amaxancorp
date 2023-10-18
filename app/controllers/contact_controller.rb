class ContactController < ApplicationController
  def new
  end

  def create
    nom = params[:nom]
    email = params[:mail]
    telephone = params[:telephone]
    expertises = params[:expertise]
    message = params[:message]

    # Envoi du message par e-mail
    ContactMailer.contact_email(nom, email, telephone, expertises, message).deliver_now

    # Redirigez l'utilisateur vers une page de confirmation
    redirect_to contact_confirmation_path
  end

  def confirmation
    render template: 'contact/_confirmation'
  end
end
