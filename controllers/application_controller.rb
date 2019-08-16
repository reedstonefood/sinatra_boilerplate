# frozen_string_literal: true

require_relative '../helpers/application_helper'

require 'sinatra'
require 'sinatra/activerecord'

# Main controller class where we set up site-wide behaviour & config
class ApplicationController < Sinatra::Base
  helpers ApplicationHelper

  # set folder for templates to ../views
  set :views, File.expand_path('../views', __dir__)

  before do
    # Set a default title, in case we don't want a custom one
    @title = 'Default title'
  end

  get '/' do
    @title = 'Home page'
    erb :index
  end
end
