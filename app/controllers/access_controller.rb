# app/controllers/access_tokens_controller.rb
class AccessTokensController < ApplicationController
  def generate
    # Votre logique de génération de lien temporaire ici
    # Par exemple, utilisez une fonction pour générer le token

    # Après avoir généré le token, vous pouvez l'enregistrer dans la base de données
    # ou tout autre endroit approprié, de manière similaire à la logique Node.js

    # Enfin, renvoyez le lien généré à l'utilisateur
    @link = "https://www.amaxan.fr/acces/#{votre_token_généré}"

    # Vous pouvez également spécifier la durée de validité du lien
    @expiration = 24.hours.from_now

    # Vous pouvez utiliser les variables @link et @expiration dans votre vue
  end

  def validate
    # Récupérez le token à partir des paramètres de l'URL
    token = params[:token]

    # Vérifiez si le token est valide et s'il est encore actif
    if token_valide?(token)
      # Redirigez l'utilisateur vers la ressource protégée
      redirect_to 'https://www.amaxan.fr/ressource-protegee'
    else
      # Gérez le cas où le lien n'est pas valide ou a expiré
      render plain: 'Lien invalide ou expiré', status: :forbidden
    end
  end

  private

  def token_valide?(token)
    # Vous devrez implémenter votre propre logique pour vérifier si le token est valide
    # Vous pouvez le faire en consultant la base de données ou en utilisant toute autre méthode
    # appropriée pour votre application
    # Assurez-vous de vérifier si le token est encore actif en comparant la date d'expiration
    # avec la date et l'heure actuelles.
    # Retournez true si le token est valide, false sinon.
  end
end
