class people::jhonathas {
  include alfred
  include chrome
  include firefox
  include bash
  include iterm2::stable
  include sublime_text_3
  include dropbox

  include emacs
  include evernote
  include onepassword
  include adium
  include skype
  include hipchat
  include skitch
  include sourcetree
  include screenhero


  # Projects
  include projects::liga


  $home = "/Users/${::luser}"

  git::config::global{ 'color.ui':
    value => 'auto',
  }

  git::config::global { 'user.name':
    value => 'Jhonathas Matos',
  }

  git::config::global { 'user.email':
    value => 'jhonathas@gmail.com',
  }
  
  git::config::global { 'push.default':
    value => 'current',
  }
}