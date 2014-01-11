class brewcask {
  require homebrew

  homebrew::tap { 'phinze/cask': }

  package { 'brew-cask':
    require => Homebrew_Tap['phinze/cask'],
  }
}
