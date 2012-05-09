require "domino_rspec/version"
require 'sinatra'

module DominoRspec
  class Server < Sinatra::Base
    set :views, File.join(File.dirname(__FILE__), 'domino_rspec', 'views')
    get '/' do
      erb :index
    end
  end
end
