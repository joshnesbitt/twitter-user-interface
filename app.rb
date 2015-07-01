get '/' do
  @tweets = TwitterClient.timeline

  erb :index
end

get '/mentions' do
  @tweets = TwitterClient.mentions

  erb :mentions
end

get '/favourites' do
  @tweets = TwitterClient.favourites

  erb :favourites
end

get '/messages' do
  @messages = TwitterClient.direct_messages

  erb :messages
end

get '/search' do

  # TODO
  erb :search
end
