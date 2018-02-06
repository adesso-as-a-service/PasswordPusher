source 'http://rubygems.org'

ruby ">=2.5.0"

gem 'rails', '~> 5.1'

group :development, :test do
  gem 'pry'
  gem 'pry-byebug', :platforms => [ :mri_20, :mri_21, :mri_22 ]
end


gem 'secure_headers'
gem 'json', '~>2.0'
gem 'slim-rails'
gem 'therubyracer'
gem 'ezcrypto', :git => 'https://github.com/pglombardo/ezcrypto.git'
#gem 'modernizr-rails', :git => 'https://github.com/russfrisch/modernizr-rails.git'
gem "high_voltage"

gem 'sass-rails'
gem 'coffee-rails'
gem 'uglifier'

gem 'foreman'
gem 'unicorn'
gem 'jquery-rails'

gem 'listen'

group :production do
  gem 'pg', '~>0.21.0'
end

group :private do
  gem "sqlite3"
end

gem 'puma'
