# frozen_string_literal: true

require 'json'

# Default interface for handling requests
module ControllerInterface
  attr_reader :request

  # @param [HttpRequestInterface]
  def initialize(request)
    @request = request
  end

  # @return [Hash]
  def params
    JSON.parse(request.body)
  end
end
