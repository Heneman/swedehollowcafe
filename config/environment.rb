# Load the Rails application.
require File.expand_path('../application', __FILE__)

# Initialize the Rails application.
Rails.application.initialize!

# Use Mail to forward incoming email
require 'mail'

Mail.defaults do
  delivery_method :smtp, {
    :address        => 'smtp.sendgrid.net',
    :port           => '587',
    :domain         => 'swedehollowcafe.com',
    :user_name      => ENV['SENDGRID_USERNAME'],
    :password       => ENV['SENDGRID_PASSWORD'],
    :authentication => :plain,
    :enable_starttls_auto => true
  }
end