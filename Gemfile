source 'http://rubygems.org'

gem 'rails', '3.0.0'

# Bundle edge Rails instead:
# gem 'rails', :git => 'git://github.com/rails/rails.git'

gem 'foreigner'
gem 'rake', '0.8.7'


gem 'faker'

gem 'commenter'



group :production, do
	gem 'pg', '~> 0.12.2'
end


gem 'omniauth-facebook'

group :development, :test do
	gem 'mysql2', '< 0.3'
end

gem 'omniauth-identity'

gem "gravatar", "~> 1.0"
gem 'gravatar_image_tag'

gem 'gravtastic'

# gem "nifty-generators",  '>= 0.4.0', :group => :development

gem 'activerecord-sqlserver-adapter'

gem "bcrypt-ruby", :require => "bcrypt"

# Use unicorn as the web server
# gem 'unicorn'

# Deploy with Capistrano
# gem 'capistrano'

# To use debugger
# gem 'ruby-debug'

# Rspec
group :test, :development do
  gem "rspec-rails", "~> 2.6"
	gem 'capybara'

end


# Bundle the extra gems:
# gem 'bj'
# gem 'nokogiri'
# gem 'sqlite3-ruby', :require => 'sqlite3'
# gem 'aws-s3', :require => 'aws/s3'

# Bundle gems for the local environment. Make sure to
# put test-only gems in this group so their generators
# and rake tasks are available in development mode:
# group :development, :test do
#   gem 'webrat'
# end
gem "mocha", :group => :test
gem "kaminari"
