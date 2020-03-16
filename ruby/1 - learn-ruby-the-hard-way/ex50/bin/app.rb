require 'sinatra'

set :port, 8080
set :static, true
set :public_folder, 'static'
set :views, 'views'

get '/' do
    return 'Hello world'
end


get '/hello' do
    erb :hello_form    
end


post '/hello' do
    # Gets greeting from params. Those params refer to the request's params;
    greeting = params[:greeting] || 'Hi There'
    name = params[:name] || 'Paiva'

    # erb (eRuby) are HTML documents for Ruby, which supports templating syntax
    # erb(page_symbol, :locals = { ...params }): Sinatra function to render an ERB page
    erb :index, :locals => {'greeting' => greeting, 'name' => name}
end

# Must be accessed from /howdy.html
get '/howdy' do
    # Serves a file from the static folder
    send_file File.join(settings.public_folder, 'index.html')
end