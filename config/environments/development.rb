Rails.application.configure do
  # Settings specified here will take precedence over those in config/application.rb.

  # In the development environment your application's code is reloaded on
  # every request. This slows down response time but is perfect for development
  # since you don't have to restart the web server when you make code changes.
  config.cache_classes = false

  # Do not eager load code on boot.
  config.eager_load = false

  # Show full error reports and disable caching.
  config.consider_all_requests_local       = true
  config.action_controller.perform_caching = false

  # Don't care if the mailer can't send.
  config.action_mailer.raise_delivery_errors = false

  # Print deprecation notices to the Rails logger.
  config.active_support.deprecation = :log

  # Raise an error on page load if there are pending migrations.
  config.active_record.migration_error = :page_load

  # Debug mode disables concatenation and preprocessing of assets.
  # This option may cause significant delays in view rendering with a large
  # number of complex assets.
  config.assets.debug = true

  config.i18n.default_locale = :es

  # Adds additional error checking when serving assets at runtime.
  # Checks for improperly declared sprockets dependencies.
  # Raises helpful error messages.
  config.assets.raise_runtime_errors = true

  config.status_rendering_verbosity = :verbose

  # Raises error for missing translations
  # config.action_view.raise_on_missing_translations = true

  config.auth_client_id = ENV['MUMUKI_AUTH0_CLIENT_ID']
  config.auth_client_secret = ENV['MUMUKI_AUTH0_CLIENT_SECRET']
  config.auth_domain = ENV['MUMUKI_AUTH0_DOMAIN']

  config.thesaurus_url = ENV['MUMUKI_THESAURUS_URL'] || 'http://thesaurus.mumuki.io'
  config.bibliotheca_url = ENV['MUMUKI_BIBLIOTHECA_URL'] || 'http://bibliotheca-api.mumuki.io'

  config.single_user_mode = ENV['MUMUKI_SINGLE_USER_MODE']
  config.queueless_mode = ENV['MUMUKI_QUEUELESS_MODE']
  config.daybreak_name = ENV['MUMUKI_DAYBREAK_NAME'] || 'permissions'

  config.domain = ENV['MUMUKI_DOMAIN'] || 'localmumuki.io'
  config.base_url = ENV['MUMUKI_BASE_URL'] || "http://#{config.domain}:3000"
  config.cookies_domain = ENV['MUMUKI_COOKIES_DOMAIN'] || ".#{config.domain}"
end
