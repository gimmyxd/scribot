# frozen_string_literal: true

require 'sinatra/base'

module ScriBot
  class Web < Sinatra::Base
    get '/' do
      'This is a test'
    end
  end
end
