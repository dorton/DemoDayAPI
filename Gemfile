source "https://rubygems.org"

ruby '2.2.0'

gem "rails", "4.2.1"
gem 'jbuilder', '~> 2.4', '>= 2.4.1'
gem 'puma'
gem "activeadmin", github: "gregbell/active_admin" # Until it"s 1.0.0
gem "active_admin_import" , '2.1.2'
gem "coffee-rails", "~> 4.0.0"
gem "rails_admin"
gem "devise"
gem "grape"
gem "grape-active_model_serializers"
gem "grape-swagger-rails"
gem "jquery-rails"
gem "pg"
gem "rack-cors", require: "rack/cors"
gem "simple_form"
# gem "sass-rails"
gem "uglifier", ">= 1.3.0"
gem 'turbolinks'
# gem "twitter-bootstrap-rails"

group :production do

  gem 'rails_12factor'
end

group :development do
  gem "better_errors"
  gem "meta_request"
  gem "quiet_assets"
  gem "spring"
end

group :development, :test do
  gem "capybara"
  gem "capybara-screenshot"
  gem "database_cleaner"
  gem "factory_girl_rails"
  gem "faker"
  gem "poltergeist"
  gem "pry-nav"
  gem "pry-rails"
  gem "pry-stack_explorer"
  gem "pry-theme"
  gem "rspec-rails"
  gem "rubocop"
  gem "shoulda-matchers"
  gem "spring-commands-rspec"
end
