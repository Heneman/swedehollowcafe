require File.expand_path('../boot', __FILE__)

require 'rails/all'

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)

module SwedeHollowCafe
  class Application < Rails::Application
    # Settings in config/environments/* take precedence over those specified here.
    # Application configuration should go into files in config/initializers
    # -- all .rb files in that directory are automatically loaded.

    # Set Time.zone default to the specified zone and make Active Record auto-convert to this zone.
    # Run "rake -D time" for a list of tasks for finding time zone names. Default is UTC.
    # config.time_zone = 'Central Time (US & Canada)'

    # The default locale is :en and all translations from config/locales/*.rb,yml are auto loaded.
    # config.i18n.load_path += Dir[Rails.root.join('my', 'locales', '*.{rb,yml}').to_s]
    # config.i18n.default_locale = :de

    # Whitelist assets to be precompiled.
    #
    # This is a workaround for an issue where the precompilation process will
    # fail on extensionless files (README, LICENSE, etc.)
    # See: https://github.com/sstephenson/sprockets/issues/347
    precompile_whitelist = %w(
      .html .erb .haml
      .png  .jpg .gif .jpeg .ico
      .eot  .otf .svc .woff .ttf
      .svg
    )
    config.assets.precompile.shift
    config.assets.precompile.unshift -> (path) {
      (extension = File.extname(path)).present? and extension.in?(precompile_whitelist)
    }

    # Autoload /lib for email_processor.rb
    config.autoload_paths += %W(#{config.root}/lib)

    # Set Time.zone default to the specified zone and make Active Record auto-convert to this zone.
    # Run "rake -D time" for a list of tasks for finding time zone names. Default is UTC.
    config.time_zone = 'Central Time (US & Canada)'
    config.active_record.default_timezone = :local
    
  end
end
