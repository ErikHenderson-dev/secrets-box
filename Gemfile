source "https://rubygems.org"
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby '3.4.2'
gem "rails", "~> 7.2.2", ">= 7.2.2.1"

# Use postgresql as the database for Active Record
gem 'pg', '~> 1.1'

# Use Puma as the app server
gem 'puma', '>= 6.4.3'

# Reduces boot times through caching; required in config/boot.rb
gem 'bootsnap', '>= 1.4.4', require: false

# Windows does not include zoneinfo files, so bundle the tzinfo-data gem
gem 'tzinfo-data', platforms: [:mingw, :mswin, :x64_mingw, :jruby]

# Bundle and transpile JavaScript [https://github.com/rails/jsbundling-rails]
gem "jsbundling-rails"

# Hotwire's SPA-like page accelerator [https://turbo.hotwired.dev]
gem "turbo-rails"

# Hotwire's modest JavaScript framework [https://stimulus.hotwired.dev]
gem "stimulus-rails"

# Bundle and process CSS [https://github.com/rails/cssbundling-rails]
gem "cssbundling-rails"

# Build JSON APIs with ease [https://github.com/rails/jbuilder]
gem "jbuilder"

# Use Active Model has_secure_password [https://guides.rubyonrails.org/active_model_basics.html#securepassword]
gem "bcrypt", "~> 3.1.7"

gem 'jwt', '~> 2.9', '>= 2.9.3'
gem 'devise'
# gem "redis", ">= 4.0.1"
gem 'abbrev'

group :development, :test do
  # Security tools
  gem 'brakeman'
  gem 'bundler-audit'
  gem 'ruby_audit'

  # Linting
  gem 'rubocop'
  gem 'rubocop-rails'

  # test
  gem 'rspec-rails'
  gem 'simplecov', '~> 0.21.1', require: false
  gem 'factory_bot_rails'
  gem 'faker'
  gem 'shoulda-matchers'
end

group :development do
  gem 'listen', '~> 3.3'
  # Spring speeds up development by keeping your application running in the background. Read more: https://github.com/rails/spring
  gem 'spring'
 
  # Debug
  # gem 'pry', '~> 0.15.2'
  # gem 'pry-byebug'
end
