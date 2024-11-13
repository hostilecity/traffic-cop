# frozen_string_literal: true

require 'interfaces/controller_interface'

class DefaultController
  include ControllerInterface

  def index
    "HTTP/1.0 200 OK\r\n" \
    "Content-Type: application/json\r\n\r\n" \
    "#{{ message: 'Hello, World!' }.to_json}"
  end
end
