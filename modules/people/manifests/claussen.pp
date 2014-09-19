# Personal Manifests

class people::claussen {
#  include emacs   # requires emacs module in Puppetfile
#  include sparrow # requires sparrow module in Puppetfile

  $home     = "/Users/${::boxen_user}"
  $my       = "${home}/my"
  $dotfiles = "${my}/dotfiles"
  
  file { $my:
    ensure  => directory
  }

  repository { $dotfiles:
    source  => 'claussen/dotfiles',
    require => File[$my]
  }
  include boxen::development
  include omnigraffle::pro
  include omnifocus
  include iterm2::stable
  include dropbox
  include onepassword
  include chrome
  include firefox
  include flux
  include evernote
  include caffeine
  include skype 
  include geektool
  include macvim
#  include vlc
  include sizeup
  include projects::all

  class { 'vlc': 
    version => '2.1.4'
  }
}
