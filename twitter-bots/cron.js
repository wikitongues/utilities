var CronJob = require('cron').CronJob;

var LikeHashtags = require('./LikeHashtags');
var LikeHashtags = require('./LikeLists');

new CronJob('00 00 12 * * *', function() {
  LikeHashtags.run();
}, null, true, 'America/Los_Angeles');

new CronJob('00 00 1 * * *', function() {
  LikeLists.run();
}, null, true, 'America/Los_Angeles');

