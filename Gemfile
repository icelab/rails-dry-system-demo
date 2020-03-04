source "https://rubygems.org"
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby "2.6.2"

# Framework/server
gem "bootsnap", ">= 1.4.2", require: false
gem "dry-system-rails", "~> 0.2"
gem "puma", "~> 3.12"
gem "rails", "~> 6.0.0"

# Database
gem "pg"

# Application dependencies
gem "dry-matcher", "~> 0.8", ">= 0.8.1"
gem "dry-monads", "~> 1.0"
gem "dry-validation", "~> 1.0"

group :development, :test do
  gem "byebug", platforms: [:mri]
end

group :development do
  gem "listen", ">= 3.0.5", "< 3.2" # for web-console
  gem "web-console", ">= 3.3.0"
end
