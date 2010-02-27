# Edit this Gemfile to bundle your application's dependencies.
source 'http://gemcutter.org'


# gem "rails", "3.0.0.beta"

## Bundle edge rails:
gem "rails", :git => "git://github.com/rails/rails.git"

# ActiveRecord requires a database adapter. By default,
# Rails has selected sqlite3.
gem "sqlite3-ruby", :require => "sqlite3"

## Bundle the gems you use:
gem 'warden',               '>= 0.9.4'                                  , :git => "git://github.com/hassox/warden.git"
gem 'devise',               '>= 1.1.pre'                                , :git => "git://github.com/plataformatec/devise.git"
gem 'chronic',              '>= 0.2.3'
gem 'will_paginate',        '>= 2.3.11',  :require => 'will_paginate'
gem 'paperclip',            '>= 2.2.9',   :require => 'paperclip'       , :git => "git://github.com/thoughtbot/paperclip.git", :branch => "rails3"
gem 'liquid',               '>= 2.0.0'                                  , :git => "git://github.com/tobi/liquid.git"
gem 'haml',                 '>= 2.2.0'
gem 'compass',              '>= 0.10.0.pre8'                            , :git => "git://github.com/chriseppstein/compass.git"
gem 'grid-coordinates',     '>= 1.0.3'
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
    gem 'cucumber',         '>= 0.6.2'
    gem 'webrat',           '>= 0.7.0'
    gem 'rspec',            '>= 1.3.0'
    gem 'rspec-rails',      '>= 1.3.2'
    gem 'factory_girl',     '>= 1.2.3', :require => 'factory_girl'
    gem 'pickle',           '>= 0.2.1'
    gem 'metric_fu',        '>= 1.3.0', :require => 'metric_fu'
end

group :cucumber do
    gem 'cucumber-rails',   '>= 0.2.4'
    gem 'database_cleaner', '>= 0.5.0'
    gem 'webrat',           '>= 0.7.0'
    gem 'rspec',            '>= 1.3.0'
    gem 'rspec-rails',      '>= 1.3.2'
    gem 'factory_girl',     '>= 1.2.3', :require => 'factory_girl'
end