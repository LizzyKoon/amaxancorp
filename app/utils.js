// Fichier : utils.js
const crypto = require('crypto');

function generateAccessToken() {
  return crypto.randomBytes(32).toString('hex');
}

module.exports = {
  generateAccessToken,
};
