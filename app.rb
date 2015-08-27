class MessagesApp < Sinatra::Base
  configure :development do
    register Sinatra::Reloader
  end
require 'pry'
  get '/' do
    @messages = Message.all
    @body_class = "messages"

    erb :messages
  end

  post '/' do
    message = Message.new
    message.to = params[:to]
    message.from = params[:from]
    message.content = params[:content]
    message.save
    # binding.pry
      #

     #in order to insert new data instantiate a new message class
     #then into each column use params to insert the content
     #save the new instance
  end

end
