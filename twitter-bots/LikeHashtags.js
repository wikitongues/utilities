var Twit = require('twit');
var T = new Twit(require('./config.js'));


function run() {
  T.get('search/tweets', { q: '%23linguistics OR %23languagerevitalization', count: 10 }, function(err, data, response) {
    if(err) {
      console.log(err);
    } else {
      var theTweet = data.statuses[0].id_str;
      T.post('favorites/create', { id: theTweet }, function (err, data, response) {
        if(err) {
          console.log(err);
        } else {
          console.log(data);
        }
      })
    }
  })
}

module.exports = {
  run: run
}