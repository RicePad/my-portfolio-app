require_relative 'boot'

require 'rails/all'
require 'dotenv-rails'

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)

module MyBlogApp
  class Application < Rails::Application
    # Initialize configuration defaults for originally generated Rails version.
    config.load_defaults 5.1
    config.encoding = "UTF-8"
    # Settings in config/environments/* take precedence over those specified here.
    # Application configuration should go into files in config/initializers
    # -- all .rb files in that directory are automatically loaded.
      # config.web_console.whitelisted_ips = '47.200.124.127'
      config.web_console.whitelisted_ips = '127.255.255.255'
      config.web_console.whitelisted_ips = '47.200.124.127'
      config.secret_key_base = ENV["SECRET_KEY_BASE"]
      config.web_console.development_only = false
      config.serve_static_assets = true






  end
end
