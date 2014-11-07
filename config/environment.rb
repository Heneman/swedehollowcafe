# Load the Rails application.
require File.expand_path('../application', __FILE__)

# Initialize the Rails application.
Rails.application.initialize!

# Use ActionMailer for SMTP
ActionMailer::Base.smtp_settings = {
  :address        => 'smtp.sendgrid.net',
  #port 465 for SSL
  :port           => '465',
  :authentication => :plain,
  :user_name      => ENV['SENDGRID_USERNAME'],
  :password       => ENV['SENDGRID_PASSWORD'],
  :domain         => 'heroku.com',
  :ssl            => true
}

# Use Mail to forward incoming email
require 'mail'

Mail.defaults do
  delivery_method :smtp, {
    :address        => 'smtp.sendgrid.net',
    :port           => '465',
    :domain         => 'swedehollowcafe.com',
    :user_name      => ENV['SENDGRID_USERNAME'],
    :password       => ENV['SENDGRID_PASSWORD'],
    :authentication => :plain,
    :ssl            => true
  }
end