# encoding: utf-8
# Load the rails application
require File.expand_path('../application', __FILE__)

# Initialize the rails application
Encoding.default_external = Encoding::UTF_8
Encoding.default_internal = Encoding::UTF_8

BusInf::Application.initialize!

Time::DATE_FORMATS[:ru_time] = "%H:%M"
