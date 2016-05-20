var Twit = require('twit');
var T = new Twit(require('./config.js'));

function run() {
  console.log('heeyyyy');
}

module.exports = {
  run: run
}