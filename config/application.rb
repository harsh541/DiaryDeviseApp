require_relative 'boot'

require 'rails/all'

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)

module Deviseapp
  class Application < Rails::Application
    # Settings in config/environments/* take precedence over those specified here.
    # Application configuration should go into files in config/initializers
    # -- all .rb files in that directory are automatically loaded.

    ActionMailer::Base.smtp_settings  = {
     	:address => "smtp.gmail.com",
     	:port => 587,
     	:user_name => "your mail",
     	:password => "your password",
     	:authentication => :plain,
     	:enable_starttls_auto => true
     }



  end
end
