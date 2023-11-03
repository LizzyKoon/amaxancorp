class ContactMailer < ApplicationMailer
  default from: 'andre.audibert@amaxan.fr' # Remplacez par votre adresse e-mail Gmail

  def contact_email(nom, email, telephone, expertises, message)
    @nom = nom
    @email = email
    @telephone = telephone
    @expertises = expertises
    @message = message

    mail(to: 'andre.audibert@amaxan.fr', subject: 'Nouveau message depuis le site Amaxan')
  end
end
