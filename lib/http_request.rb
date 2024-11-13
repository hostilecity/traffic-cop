# frozen_string_literal: true

require 'interfaces/http_request_interface'

class HttpRequest
  include HttpRequestInterface
  attr_reader :message

  def initialize(message)
    @message = message
  end

  def action
    case message.split.first
    when 'GET'
      :default
    when 'PATCH'
      :patch
    when 'PUT'
      :put
    when 'POST'
      :post
    else
      super
    end
  end

  def body
    @body ||= message.split("\r\n\r\n")[1..].join("\r\n\r\n")
  end

  def headers
    @headers ||= message.split("\r\n\r\n").first.split("\r\n")[1..].map do |header|
      header.split(/: /)
    end.to_h
  end

  def path
    message.split[1]
  end
end
