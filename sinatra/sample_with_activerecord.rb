#gemfile
source 'https://rubygems.org'

## Note on Semantic Versioning Gems
# http://guides.rubygems.org/patterns/
# http://robots.thoughtbot.com/rubys-pessimistic-operator

gem 'sinatra', '~> 1.4.5'
gem 'active_support', '~> 4.1'

# app.rb
# How to load active_support piece by piece
# http://guides.rubyonrails.org/active_support_core_extensions.html#how-to-load-core-extensions
require 'sinatra'
require 'active_support'
require 'active_support/core_ext/numeric/time'
