require homebrew

class brewcask inherits homebrew::config {
  include boxen::config

  homebrew::tap { 'phinze/cask': }

  package { 'brew-cask':
    require => Homebrew_Tap['phinze/cask']
  }
}
