class ContactMailer < ApplicationMailer
  default from: 'audibert.maxence@gmail.com' # Remplacez par votre adresse e-mail Gmail

  def contact_email(nom, email, telephone, expertises, message)
    @nom = nom
    @email = email
    @telephone = telephone
    @expertises = expertises
    @message = message

    mail(to: 'audibert.maxence@gmail.com', subject: 'Nouveau message depuis le site Amaxan')
  end
end
