// models/access-token.js
const mongoose = require('mongoose');
const Schema = mongoose.Schema;

// Définir le schéma du modèle pour les jetons d'accès temporaires
const accessTokenSchema = new Schema({
  token: { type: String, required: true },
  expiresAt: { type: Date, required: true },
  // Vous pouvez ajouter d'autres champs si nécessaire
});

// Créer le modèle AccessToken à partir du schéma
const AccessToken = mongoose.model('AccessToken', accessTokenSchema);

module.exports = AccessToken;
