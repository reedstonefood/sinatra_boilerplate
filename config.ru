# frozen_string_literal: true

# pull in the controllers
require './controllers/application_controller.rb'
Dir[File.join(__dir__, 'controllers', '*.rb')].each { |file| require file }

# Base level routes to send requests to the correct controller
map('/') { run ApplicationController }
map('/db_test') { run DBTestController }
