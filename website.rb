require "bundler/setup"
require "sinatra/base"
require 'haml'

module Website
  class ImperialPark < Sinatra::Application
    set :root, File.dirname(__FILE__)
    set :public, File.expand_path("../public", __FILE__)

    get "/" do
      haml :index
    end

    helpers do
      def partial(page, options={})
        haml page, options.merge!(:layout => false)
      end
    end
  end
end


