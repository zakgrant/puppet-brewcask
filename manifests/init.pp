require homebrew

class brewcask(
  $caskroom = "${boxen::config::home}/homebrew-cask/Caskroom"
) inherits homebrew::config {
  include boxen::config

  homebrew::tap { 'phinze/cask': }

  package { 'brew-cask':
    require => Homebrew_Tap['phinze/cask'],
  }

  boxen::env_script { 'homebrew-cask':
    content  => template('brewcask/env.sh.erb'),
    priority => normal,
  }
}
