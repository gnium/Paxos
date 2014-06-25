source "https://rubygems.org"

gem "rails", "3.2.13"
gem "jquery-rails"
gem "devise", ">= 2.2.3"
gem "devise_invitable", "~> 1.1.0"
gem "simple_form", ">= 2.1.0"
gem "figaro", ">= 0.6.3"
gem "d3-rails"
gem "inherited_resources"
gem "has_scope"
gem "kaminari"
gem "strong_parameters"
gem "simple-navigation-bootstrap"
gem "slim"
gem "nested_form"

group :assets do
  gem "sass-rails",   "~> 3.2.3"
  gem "coffee-rails", "~> 3.2.1"
  gem "uglifier", ">= 1.0.3"
end

group :production do
  gem "unicorn", ">= 4.3.1"
  gem "pg"
end

group :development do
  gem "letter_opener"
  gem "quiet_assets", ">= 1.0.2"
  gem "better_errors", ">= 0.7.2"
  gem "binding_of_caller", ">= 0.7.1", platforms: [:mri_19, :rbx]
  gem "sqlite3"
end

group :test do
  gem "email_spec", ">= 1.4.0"
  gem "launchy", ">= 2.2.0"
  gem "capybara", ">= 2.0.2"
  gem "shoulda-matchers"
  gem "database_cleaner", ">= 1.0.0.RC1"
  gem "cucumber-rails", ">= 1.3.1", require: false
end

group :development, :test do
  gem "thin", ">= 1.5.0"
  gem "rspec-rails", ">= 2.12.2"
  gem "factory_girl_rails", ">= 4.2.0"
end
