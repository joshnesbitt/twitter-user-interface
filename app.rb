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
  @tweets = TwitterClient.search(params[:q]) unless params[:q].nil?

  erb :search
end

get '/profile/:username' do
  @username = params[:username]
  @tweets = TwitterClient.timeline_for(@username)

  erb :profile
end

get '/hashtag/:tag' do
  @tag = params[:tag]
  @tweets = TwitterClient.hashtag(@tag)

  erb :hashtag
end
