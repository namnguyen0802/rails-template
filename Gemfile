source 'https://rubygems.org'
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby '3.0.1'

# Bundle edge Rails instead: gem 'rails', github: 'rails/rails', branch: 'main'
gem 'rails', '~> 6.1.3', '>= 6.1.3.2'
# Use postgresql as the database for Active Record
gem 'pg', '~> 1.1'
# Use Puma as the app server
gem 'puma', '~> 5.0'
# Use SCSS for stylesheets
gem 'sass-rails', '>= 6'
# Transpile app-like JavaScript. Read more: https://github.com/rails/webpacker
gem 'webpacker', '~> 5.0'
# Turbolinks makes navigating your web application faster. Read more: https://github.com/turbolinks/turbolinks
gem 'turbolinks', '~> 5'
# Build JSON APIs with ease. Read more: https://github.com/rails/jbuilder
gem 'jbuilder', '~> 2.7'
# Use Redis adapter to run Action Cable in production
# gem 'redis', '~> 4.0'
# Use Active Model has_secure_password
# gem 'bcrypt', '~> 3.1.7'

# Use Active Storage variant
# gem 'image_processing', '~> 1.2'

# Reduces boot times through caching; required in config/boot.rb
gem 'bootsnap', '>= 1.4.4', require: false
gem 'dotenv-rails'
gem 'annotate'

# File uploading
gem 'mini_magick'
gem 'carrierwave', '~> 1.0'

# Authentication
gem 'devise'

#View render
gem 'bootstrap', '~> 4.3.1'
gem 'jquery-rails'
gem 'simple_form'
gem 'font-awesome-rails'
gem 'kaminari'
gem "unicorn"


# File uploading
# gem 'mini_magick'
# gem 'carrierwave', '~> 1.0'
# gem 'fog-aws'

# Pdf render
# gem 'wicked_pdf'
# gem 'wkhtmltopdf-binary'

# Xlsx render
# gem 'axlsx', git: 'https://github.com/randym/axlsx.git'
# gem 'axlsx_rails'

# Background worker
# gem 'sidekiq-cron', '~> 1.1'
# gem 'whenever', require: false
# gem 'sidekiq'

gem 'rexml', '~> 3.2', '>= 3.2.4'


group :development, :test do
  # Call 'byebug' anywhere in the code to stop execution and get a debugger console
  gem 'byebug', platforms: [:mri, :mingw, :x64_mingw]
  gem 'pry'
  gem 'letter_opener_web', '~> 1.0'
  gem 'bullet'
end

group :development do
  gem "capistrano"
  gem "capistrano-rails"
  gem "capistrano3-unicorn"
  gem "capistrano-rvm"
  gem 'web-console', '>= 4.1.0'

  gem 'rack-mini-profiler', '~> 2.0'
  gem 'listen', '~> 3.3'
  gem 'spring'
end

group :test do
  # Adds support for Capybara system testing and selenium driver
  gem 'capybara', '>= 3.26'
  gem 'selenium-webdriver'
  # Easy installation and use of web drivers to run system tests with browsers
  gem 'webdrivers'

  # gem 'chromedriver-helper'
  # gem 'simplecov', require: false
end

# Windows does not include zoneinfo files, so bundle the tzinfo-data gem
gem 'tzinfo-data', platforms: [:mingw, :mswin, :x64_mingw, :jruby]
