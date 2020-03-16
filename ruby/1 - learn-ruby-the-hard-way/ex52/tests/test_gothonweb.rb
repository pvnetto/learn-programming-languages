require './bin/app.rb'
require 'test/unit'
require 'rack/test'


class MyAppTest < Test::Unit::TestCase

    include Rack::Test::Methods

    def app
        Sinatra::Application
    end

    def test_index
        get '/'

        session = last_request.session
        assert_equal session[:room], 'START'
    end

    def test_show_start
        # Sets a value for session
        env 'rack.session', {room: 'START'}
        get '/game'

        assert last_response.ok?
        assert last_response.body.include?('Choose your')
    end

    def test_start_post
        post '/game', params={:action => 'shoot!'}
        assert last_response.ok?
        assert last_response.body.include?('You Died')
    end

end
