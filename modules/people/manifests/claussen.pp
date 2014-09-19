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
}
include omnigraffle::pro
include omnifocus
include projects::all
