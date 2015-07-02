# Drush class
class drush ($version = '7.0.0') {
  # Make sure drush is not installed from homebrew
  package {
    'drush':
      ensure => 'absent';
  }

  # Install using composer
  exec {'install-drush':
    command => "bash -c 'source /opt/boxen/env.sh && composer global require drush/drush:${version}'",
    require => Class['php::composer', 'nodejs'],
    unless  => "bash -c 'source /opt/boxen/env.sh && /opt/boxen/repo/shared/drush/files/drush_installed.js ${version}'"
  }
}
