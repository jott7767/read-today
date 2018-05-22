source 'https://rubygems.org'

git_source(:github) do |repo_name|
  repo_name = "#{repo_name}/#{repo_name}" unless repo_name.include?("/")
  "https://github.com/#{repo_name}.git"
end
ruby '2.3.3'

# Bundle edge Rails instead: gem 'rails', github: 'rails/rails'
gem 'rails', '~> 5.1.3'
gem 'pg'
gem 'puma', '~> 3.7'
gem 'sass-rails', '~> 5.0'
gem 'uglifier', '>= 1.3.0'
gem 'coffee-rails', '~> 4.2'
gem 'turbolinks', '~> 5'
gem 'jbuilder', '~> 2.5'
gem 'jquery-rails', '~> 4.3', '>= 4.3.1'
gem 'bootstrap-sass', '~> 3.3', '>= 3.3.6'
gem 'bootstrap-datepicker-rails'
gem 'devise', '~> 4.3'
gem 'petergate', '~> 1.7', '>= 1.7.5'
gem 'haml', '~> 5.0', '>= 5.0.2'
gem 'will_paginate', '~> 3.1', '>= 3.1.6'
gem 'paperclip', '~> 5.2.1'
gem 'aws-sdk', '< 3.0'
gem 'font-awesome-rails'
gem 'aws-sdk-s3', '~> 1'
gem 'chronic'

group :development, :test do
  gem 'pry-byebug', '~> 3.4', '>= 3.4.3'
  gem 'byebug', platforms: [:mri, :mingw, :x64_mingw]
  gem 'capybara', '~> 2.13'
  gem 'selenium-webdriver'
end

group :development do
  gem 'web-console', '>= 3.3.0'
  gem 'listen', '>= 3.0.5', '< 3.2'
  gem 'spring'
  gem 'spring-watcher-listen', '~> 2.0.0'
end

# Windows does not include zoneinfo files, so bundle the tzinfo-data gem
gem 'tzinfo-data', platforms: [:mingw, :mswin, :x64_mingw, :jruby]
