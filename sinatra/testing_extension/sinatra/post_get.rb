require 'sinatra/base'

module Sinatra
  module PostGet
    def post_get(route, &block)
      get(route, &block)
      post(route, &block)
    end
  end

  # now we just to register it via Sinatra::Base
  register PostGet

  module LinkHelper
    def link(name)
      case name
      when :about then '/about'
      when :index then '/index'
      else "/page/#{name}"
      end
    end
  end

  helpers LinkHelper
end

