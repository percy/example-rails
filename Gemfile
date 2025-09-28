source 'https://rubygems.org'

ruby '~> 2.4'

gem 'rails', '~> 5.2.6', '>= 5.2.6.1'

gem 'sqlite3'
gem 'sass-rails', '>= 5.0.8'
gem 'uglifier'
gem 'coffee-rails'
gem 'jquery-rails', '>= 4.5.0'
gem 'turbolinks', github: 'rails/turbolinks'
# Pin Puma to a recent-ish version that supports OpenSSL, which is
# what the CircleCI environment has.
gem 'puma', '~> 5.5'

group :test do
  gem 'capybara', '~> 3.36', '>= 3.36.0'
  gem 'selenium-webdriver'
  gem 'database_cleaner'
  gem 'percy-capybara', '~> 4.3.3'
end

group :production do
  gem 'rails_12factor'
end
