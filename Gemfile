source "https://rubygems.org"
git_source(:github) { |name| "https://github.com/#{name}.git" }

gem "rails", "= 7.0.4"
gem "will_paginate"

gem "resolv",              github: "feedbin/resolv",              branch: "feedbin"
gem "http",                github: "feedbin/http",                branch: "feedbin"
gem "carrierwave",         github: "feedbin/carrierwave",         branch: "feedbin"
gem "carrierwave_direct",  github: "feedbin/carrierwave_direct",  ref: "a0bc323"
gem "dalli",               github: "feedbin/dalli",               branch: "feedbin"
gem "sax-machine",         github: "feedbin/sax-machine",         branch: "feedbin"
gem "feedjira",            github: "feedbin/feedjira",            branch: "f2"
gem "feedkit",             github: "feedbin/feedkit",             branch: "master"
gem "grocer-pushpackager", github: "feedbin/grocer-pushpackager", ref: "6b01b4e", require: "grocer/pushpackager"
gem "html-pipeline",       github: "feedbin/html-pipeline",       branch: "feedbin"
gem "html_diff",           github: "feedbin/html_diff",           ref: "013e1bb"
gem "opml_saw",            github: "feedbin/opml_saw",            ref: "61d8c2d"
gem "elasticsearch-model", github: "feedbin/elasticsearch-rails", branch: "2.x"
gem "twitter",             github: "feedbin/twitter",             branch: "feedbin"
gem "down",                github: "feedbin/down",                branch: "normalize"

gem "activerecord-import"
gem "addressable", require: "addressable/uri"
gem "apnotic", github: "ostinelli/apnotic", branch: "master"
gem "autoprefixer-rails"
gem "bcrypt"
gem "bootsnap", require: false
gem "clockwork"
gem "coffee-rails"
gem "connection_pool"
gem "dotenv-rails"
gem "elasticsearch", "~> 2.0"
gem "evernote_oauth"
gem "fog-aws"
gem "honeybadger"
gem "htmlentities"
gem "httparty"
gem "image_processing"
gem "jbuilder"
gem "jquery-rails"
gem "librato-rails", "~> 1.4.2"
gem "lograge"
gem "net-http-persistent"
gem "oauth"
gem "pg"
gem "postmark-rails"
gem "premailer-rails"
gem "rack-attack"
gem "raindrops"
gem "redcarpet"
gem "redis"
gem "responders"
gem "reverse_markdown"
gem "rmagick", require: false
gem "ruby-vips"
gem "rubyzip"
gem "sanitize"
gem "sass-rails"
gem "sidekiq"
gem "stripe", "~> 5.55.0"
gem "stripe_event"
gem "strong_migrations"
gem "twitter-text"
gem "uglifier"
gem "unicode-emoji"
gem "unicorn"
gem "jwt"

group :development do
  gem "benchmark-ips"
  gem "better_errors"
  gem "binding_of_caller"
  gem "htmlbeautifier"
  gem "listen"
  gem "silencer"
  gem "foreman"
end

group :development, :test do
  gem "stripe-ruby-mock", github: "feedbin/stripe-ruby-mock", branch: "feedbin", require: "stripe_mock"

  gem "byebug", platforms: [:mri, :mingw, :x64_mingw]
  gem "capybara"
  gem "faker"
  gem "minitest"
  gem "minitest-stub-const"
  gem "minitest-stub_any_instance"
  gem "puma"
  gem "rails-controller-testing"
  gem "selenium-webdriver"
  gem "standard"
  gem "webmock", "= 3.8.0"

end
