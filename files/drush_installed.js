#!/usr/bin/env node
var exec = require('child_process').exec;

var drush;
var code = 1;
var drushVersion = process.argv[2];

exec('composer global show -i', function (err, stdout, stderr) {
  drush = stdout.match(/(drush\/drush).*$/m);
  if (drush) {
    drush = drush[0].replace(/\s+/g, ' ').split(' ');

    if (drush[1] === drushVersion) {
      code = 0;
    }
  }

  process.exit(code);
});
