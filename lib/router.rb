# frozen_string_literal: true

require 'concerns/draw_routes'

# Match requests to configured routes
class Router
  extend DrawRoutes

  # @param [RequestInterface]
  def self.match(request)
    match = self.routes.detect do |route|
      route[:action] == request.action &&
        route[:path] == request.path
    end
    raise NotImplementedError, 'route not defined!' if match.nil?

    match[:controller].new(request).send(match[:method])
  end
end
