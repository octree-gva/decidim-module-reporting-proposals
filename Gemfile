# frozen_string_literal: true

source "https://rubygems.org"

ruby RUBY_VERSION

# Inside the development app, the relative require has to be one level up, as
# the Gemfile is copied to the development_app folder (almost) as is.
base_path = ""
base_path = "../" if File.basename(__dir__) == "development_app"
require_relative "#{base_path}lib/decidim/reporting_proposals/version"

DECIDIM_VERSION = Decidim::ReportingProposals::DECIDIM_VERSION

gem "decidim", DECIDIM_VERSION
gem "decidim-reporting_proposals", path: "."

gem "bootsnap", "~> 1.18"
gem "faker", "~> 3.5"
gem "puma", ">= 6.6"
gem "rspec", "~> 3.13"

group :development, :test do
  gem "byebug", "~> 11.0", platform: :mri

  gem "decidim-dev", DECIDIM_VERSION
  gem "decidim-templates", DECIDIM_VERSION
end

group :development do
  gem "letter_opener_web"
  gem "listen", "~> 3.9"
  gem "rubocop-faker", "~> 1.2"
  gem "spring", "~> 4.3"
  gem "spring-watcher-listen", "~> 2.1"
  gem "web-console"
end

group :test do
  gem "codecov", require: false
end
