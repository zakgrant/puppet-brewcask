class brewcask {
  require homebrew

  homebrew::tap { 'homebrew-cask':
    source => 'phinze/homebrew-cask',
  }

  package { 'brew-cask':
    require => Homebrew_Tap['phinze/homebrew-cask'],
  }
}
