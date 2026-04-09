require_relative "boot"
require "rails"
require "action_controller/railtie"

module RailsStarter
  class Application < Rails::Application
    config.load_defaults 7.2
    config.eager_load = false
    config.secret_key_base = 'dev-secret-change-in-production'
    # Allow *.frem.run subdomains so sandboxes served at
    # {envId}-{port}.frem.run aren't blocked by ActionDispatch::HostAuthorization.
    config.hosts << ".frem.run"
  end
end
