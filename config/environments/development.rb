Rails.application.configure do

  config.cache_classes = false
  config.eager_load = false
  config.consider_all_requests_local       = true
  config.action_controller.perform_caching = false
  config.action_mailer.raise_delivery_errors = true
  config.action_mailer.delivery_method = :smtp
  host = 'localhost:3000'
  config.action_mailer.default_url_options = { host: host }
  config.active_support.deprecation = :log
  config.active_record.migration_error = :page_load
  config.assets.debug = true
  config.assets.digest = true
  config.assets.raise_runtime_errors = true

  ActionMailer::Base.smtp_settings = {
    :address              => "smtp.gmail.com",
    :port                 => "587",
    :domain               => "gmail.com",
    :user_name            => "manikandan.narayanaswamy@gmail.com",
    :password             => "seetharam",
    :authentication       => "plain",
    :enable_starttls_auto => true
  }
  config.action_mailer.raise_delivery_errors = true
config.action_mailer.perform_deliveries = true
end
