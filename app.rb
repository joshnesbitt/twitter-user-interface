include Twitter::Autolink

get '/' do
  @tweets = TwitterClient.timeline

  erb :index
end

get '/mentions' do
  erb :mentions
end

get '/favourites' do
  erb :favourites
end

get '/search' do
  erb :search
end

get '/account' do
  erb :account
end
