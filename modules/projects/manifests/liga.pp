class projects::liga {
  include mysql
  include redis
  include mongodb
  include elasticsearch
  include nodejs
  include memcached


  package { "imagemagick":
    ensure => installed,
  }

  boxen::project { 'liga':
    nodejs        => true,
    memcached     => true,
    elasticsearch => true,
    mysql         => true,
    mongodb       => true
    redis         => true,
    ruby          => '1.9.3-p194',
    source        => 'bonera/liga'
  }
}