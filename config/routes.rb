# frozen_string_literal: true

require 'controllers/default_controller'

Router.draw do
  get '/', controller: DefaultController, method: :index
end
