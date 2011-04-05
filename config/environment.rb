# Load the rails application
require File.expand_path('../application', __FILE__)

# require 'rails-openid'
require 'rack/openid'

# Initialize the rails application
Yoleas::Application.initialize!
