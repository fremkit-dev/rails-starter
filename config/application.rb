require "rails"
require "action_controller/railtie"

module RailsStarter
  class Application < Rails::Application
    config.load_defaults 7.2
    config.eager_load = false
    config.secret_key_base = 'dev-secret-change-in-production'
  end
end
