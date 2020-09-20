source "https://rubygems.org"

# Specify your gem's dependencies in clowne.gemspec
gemspec

gem "pry-byebug", platform: :mri

gem "sqlite3", "~> 1.4.2", platform: :ruby
gem "activerecord-jdbcsqlite3-adapter", "~> 51.0", platform: :jruby
gem "jdbc-sqlite3", platform: :jruby

gem "activerecord", "~> 6.0"
gem "sequel", ">= 5.36"
gem "simplecov"

local_gemfile = "Gemfile.local"

if File.exist?(local_gemfile)
  eval(File.read(local_gemfile)) # rubocop:disable Security/Eval
end
