# frozen_string_literal: true

# A second controller, to demonstrate how multiple controllers work
# and to test the database connection
class DBTestController < ApplicationController
  get '/' do
    @title = 'Test DB connection'
    erb :db_test
  end

  def message
    ActiveRecord::Base.establish_connection # Establishes connection
    ActiveRecord::Base.connection # Calls connection object
    ActiveRecord::Base.connected? ? 'CONNECTED!' : 'NOT CONNECTED!'
  rescue StandardError => e
    "NOT CONNECTED! Exception: #{e.class}"
  end
end
