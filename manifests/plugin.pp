# Install a drush plugin
define drush::plugin ($name) {

  exec {"drush-dl-plugin-${name}":
    cwd     => "/Users/${::boxen_user}/.drush",
    command => "bash -c 'source /opt/boxen/env.sh && drush dl ${name} && drush cc drush'",
    creates => "/Users/${::boxen_user}/.drush/${name}",
    require => Class['drush'],
  }
}
