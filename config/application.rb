require_relative 'boot'

require "rails"
# Pick the frameworks you want:
 require "active_model/railtie"
 require "active_job/railtie"
 require "action_controller/railtie"
 require "action_mailer/railtie"
 require "action_view/railtie"
 require "sprockets/railtie"
 require "rails/test_unit/railtie"

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)

module Ritaeantonio
  class Application < Rails::Application
    # Settings in config/environments/* take precedence over those specified here.
    # Application configuration should go into files in config/initializers
    # -- all .rb files in that directory are automatically loaded.
    config.i18n.enforce_available_locales = false
    config.i18n.default_locale = :pt
  end
end
