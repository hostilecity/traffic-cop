# frozen_string_literal: true

$LOAD_PATH.unshift File.expand_path('app'),
                   File.expand_path('lib')

require 'http_request'
require 'router'
require 'server'
require_relative 'config/routes'

Server.run do |message, sender, flags|
  request = HttpRequest.new(message)
  Router.match(request)
end
