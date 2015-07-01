def twitter
  @twitter ||= Twitter::REST::Client.new do |config|
    config.consumer_key = ENV["APP_TWITTER_CONSUMER_KEY"]
    config.consumer_secret = ENV["APP_TWITTER_CONSUMER_SECRET"]
    config.access_token = ENV["APP_TWITTER_ACCESS_TOKEN"]
    config.access_token_secret = ENV["APP_TWITTER_ACCESS_TOKEN_SECRET"]
  end
end

get '/' do
  # @tweets = twitter.user_timeline('joshnesbitt')
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
