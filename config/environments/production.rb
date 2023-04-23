require "active_support/core_ext/integer/time"

Rails.application.configure do
  #DB_PASSWORD = 'Passwordの値'
  #DATABASE_URL = 'Internal Database URLの値'
  #RAILS_MASTER_KEY = 'master.keyの値'

  config.secret_key_base = ENV['SECRET_KEY_BASE']
  secret_key_base = ENV['SECRET_KEY_BASE']
  SECRET_KEY_BASE = ENV['SECRET_KEY_BASE']
  
  config.hosts.clear #全てのhostを受け入れる

  #config.hosts << "www.aim-get.com"
  #config.hosts << "aim-get.com"
  #config.hosts << "docker-circleci-ecs-test-git.onrender.com"
  #config.hosts << "0.0.0.0"

  config.cache_classes = true
  config.eager_load = true

  config.consider_all_requests_local       = false
  config.action_controller.perform_caching = true

  config.public_file_server.enabled = ENV['RAILS_SERVE_STATIC_FILES'].present? || ENV['RENDER'].present?

  config.assets.compile = false

  config.active_storage.service = :local

  #config.force_ssl = true
  #config.ssl_options = { redirect: { exclude: -> request { request.env['HTTP_USER_AGENT'].include?('ELB-HealthChecker') } } }

  config.log_level = :info

  config.log_tags = [ :request_id ]

  config.action_mailer.perform_caching = false

  config.i18n.fallbacks = true

  config.active_support.deprecation = :notify

  config.active_support.disallowed_deprecation = :log

  config.active_support.disallowed_deprecation_warnings = []

  config.log_formatter = ::Logger::Formatter.new

  if ENV["RAILS_LOG_TO_STDOUT"].present?
    logger           = ActiveSupport::Logger.new(STDOUT)
    logger.formatter = config.log_formatter
    config.logger    = ActiveSupport::TaggedLogging.new(logger)
  end

  config.active_record.dump_schema_after_migration = false
end
