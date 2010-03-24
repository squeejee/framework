# Edit this Gemfile to bundle your application's dependencies.
source 'http://gemcutter.org'


# gem "rails", "3.0.0.beta"

## Bundle edge rails:
gem "rails", :git => "git://github.com/rails/rails.git"
#gem "rails", "3.0.0.beta"

# ActiveRecord requires a database adapter. By default,
# Rails has selected sqlite3.
gem "sqlite3-ruby", :require => "sqlite3"
gem "mysql"

## Bundle the gems you use:
gem 'warden'
gem 'devise', :git => "git://github.com/plataformatec/devise.git"
gem 'chronic',              '>= 0.2.3'
gem 'will_paginate',        '>= 3.0.pre'
gem 'paperclip',            '>= 2.2.9',   :require => 'paperclip'       , :git => "git://github.com/thoughtbot/paperclip.git", :branch => "rails3"
gem 'liquid',               '>= 2.0.0'                                  , :git => "git://github.com/tobi/liquid.git"
gem 'haml',                 '>= 2.2.21'
gem 'compass',              '>= 0.10.0.rc1'
gem 'grid-coordinates',     '>= 1.0.4',   :require => 'compass'
gem 'hoptoad_notifier',     '>= 2.2.0'
# Unsupported on Rails3 as of now
# gem 'newrelic_rpm',         '>= 2.9.5'                                , :git => "git://github.com/newrelic/rpm.git"
# gem 'friendly_id',          '>= 2.1.1'
# gem 'whenever',             '>= 0.4.1'                                , :git => "git://github.com/marcroberts/whenever.git"


## Bundle gems used only in certain environments:
# gem "rspec", :group => :test
# group :test do
#   gem "webrat"
# end
group :test do
    gem 'test-unit',        '1.2.3'
    gem 'cucumber',         '>= 0.6.3'
    gem 'cucumber-rails',   '>= 0.3.0'
    gem 'capybara',         '>= 0.3.5'
    gem 'rspec',            '>= 2.0.0.beta.3'
    gem 'rspec-rails',      '>= 2.0.0.beta.3'
    gem 'factory_girl',     '>= 1.2.3',   :require => false             , :git => "git://github.com/thoughtbot/factory_girl.git", :branch => "rails3"
    gem 'pickle',           '>= 0.2.1'
    gem 'metric_fu',        '>= 1.3.0',   :require => 'metric_fu'
    gem 'no_peeping_toms',  '>= 1.1.0'                                  , :git => "git://github.com/patmaddox/no-peeping-toms.git"
end
