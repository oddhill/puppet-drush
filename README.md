# Drush puppet for boxen

Install `drush` via Composer.

## Usage

```puppet
class { 'drush':
  version => '8.0.0-beta11' # Drush version
}
```

## Required Puppet Modules

* `boxen`
* `php & composer`
