Devise.setup do |config|
  config.apply_schema               = false
  require 'devise/orm/mongoid'

  config.router_name                = :authmonk
  config.parent_controller          = 'ActionController::Base'

  config.authentication_keys        = [ :email ]
  config.strip_whitespace_keys      = [ :email ]
  config.case_insensitive_keys      = [ :email ]

  config.skip_session_storage       = [ :http_auth ]
  config.stretches                  = Rails.env.test? ? 1 : 10
  config.reconfirmable              = true
  config.use_salt_as_remember_token = true
  config.reset_password_within      = 6.hours
  config.sign_out_via               = :get
end
