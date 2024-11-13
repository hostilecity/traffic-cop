# frozen_string_literal: true

module DrawRoutes
  @@routes = []

  def draw(&block)
    instance_eval(&block)
  end

  def routes
    @@routes
  end

  def get(path, **options)
    add_route(:default, path, **options)
  end

  def patch(path, **options)
    add_route(:patch, path, **options)
  end

  def put(path, **options)
    add_route(:put, path, **options)
  end

  def post(path, **options)
    add_route(:post, path, **options)
  end

  def add_route(action, path, **options)
    @@routes.append(
      action:,
      path:,
      controller: options.fetch(:controller),
      method: options.fetch(:method)
    )
  end
end
