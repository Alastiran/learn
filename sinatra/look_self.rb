require "sinatra"
require 'pry'

outer_self = self

get '/' do
  binding.pry
  content_type :txt
  "outer self: #{outer_self}, inner self: #{self}"
end

