# Drush puppet for boxen

Install `drush` via Composer.

[![Build Status](https://travis-ci.org/jenslind/puppet-drush.svg?branch=master)](https://travis-ci.org/jenslind/puppet-drush)

## Usage

```puppet
class { 'drush':
  version => '8.0.0-beta11' # Drush version
}
```

## Required Puppet Modules

* `boxen`
* `php & composer`
