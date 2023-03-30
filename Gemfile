source 'https://rubygems.org'

ruby '~> 2.4'

gem 'rails', '~> 6.1.7', '>= 6.1.7.3'

gem 'sqlite3'
gem 'sass-rails'
gem 'uglifier'
gem 'coffee-rails'
gem 'jquery-rails'
gem 'turbolinks', github: 'rails/turbolinks'
# Pin Puma to a recent-ish version that supports OpenSSL, which is
# what the CircleCI environment has.
gem 'puma', '~> 5.5'

group :test do
  gem 'capybara', '~>3.35'
  gem 'selenium-webdriver'
  gem 'database_cleaner'
  gem 'percy-capybara', '~> 4.3.3'
end

group :production do
  gem 'rails_12factor'
end
