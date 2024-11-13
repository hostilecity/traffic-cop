# frozen_string_literal: true

module HttpRequestInterface
  def action
    raise NotImplementedError
  end

  def body
    raise NotImplementedError
  end

  def headers
    raise NotImplementedError
  end

  def path
    raise NotImplementedError
  end
end
