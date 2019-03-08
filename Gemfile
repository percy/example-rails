source 'https://rubygems.org'

ruby '>= 2.2.2'

gem 'rails', '~> 5.0.0'

gem 'sqlite3'
gem 'sass-rails'
gem 'uglifier'
gem 'coffee-rails'
gem "jquery-rails"
gem 'turbolinks', github: 'rails/turbolinks'
# Pin Puma to a recent-ish version that supports OpenSSL, which is
# what the CircleCI environment has.
gem 'puma', '~> 3.12'

group :test do
  gem 'capybara'
  gem 'poltergeist'
  gem 'database_cleaner'
  gem 'percy-capybara'
end

group :production do
  gem 'rails_12factor'
end
