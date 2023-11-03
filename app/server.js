const express = require('express');
const mongoose = require('mongoose');
const session = require('express-session');
const app = express();

// Configuration de la session
app.use(session({
  secret: 'votre_secret_key',
  resave: false,
  saveUninitialized: false,
  cookie: { secure: false },
}));

// Configuration de la base de données MongoDB
mongoose.connect('mongodb://votre_base_de_donnees', { useNewUrlParser: true, useUnifiedTopology: true });

app.get('/generer-lien', (req, res) => {
  const { generateAccessToken } = require('./utils'); // Importez votre fonction

  const accessToken = generateAccessToken();
  const expirationDate = new Date();
  expirationDate.setHours(expirationDate.getHours() + 24); // Exemple : l'access expire dans 24 heures

  // Enregistrez le jeton et la date d'expiration dans votre base de données
  const access = new AccessToken({ token: accessToken, expiration: expirationDate });
  access.save((err) => {
    if (err) {
      console.error(err);
      return res.status(500).send('Erreur lors de la création du lien.');
    }
    // Générez le lien complet avec le jeton d'accès
    const link = `https://www.amaxan.fr/acces/${accessToken}`;
    res.send(`Lien temporaire : ${link}`);
  });
});

app.get('/acces/:token', (req, res) => {
  const token = req.params.token;
  const AccessToken = require('./models/access-token'); // Importez le modèle d'accès

  // Recherchez le jeton dans la base de données
  AccessToken.findOne({ token: token }, (err, access) => {
    if (err) {
      console.error(err);
      return res.status(500).send('Erreur lors de la vérification du lien.');
    }

    if (!access) {
      return res.status(404).send('Lien non valide.');
    }

    const now = new Date();
    if (now > access.expiration) {
      return res.status(403).send('Lien expiré.');
    }

    // Le lien est valide, redirigez l'utilisateur vers la ressource protégée
    res.redirect('https://www.amaxan.fr/ressource-protegee');
  });
});

const AccessToken = require('./models/access-token');
