class TwitterClient
  class << self

    def timeline
      client.user_timeline
    end

  private

    def client
      @client ||= Twitter::REST::Client.new do |config|
        config.consumer_key = ENV["APP_TWITTER_CONSUMER_KEY"]
        config.consumer_secret = ENV["APP_TWITTER_CONSUMER_SECRET"]
        config.access_token = ENV["APP_TWITTER_ACCESS_TOKEN"]
        config.access_token_secret = ENV["APP_TWITTER_ACCESS_TOKEN_SECRET"]
      end
    end
  end
end
