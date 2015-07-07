class TwitterClient
  class << self

    def timeline
      client.user_timeline
    end

    def timeline_for(username)
      client.user_timeline(username)
    end

    def hashtag(tag)
      client.search("##{tag}")
    end

    def mentions
      client.mentions_timeline
    end

    def favourites
      client.favorites
    end

    def direct_messages
      client.direct_messages
    end

    def search(q)
      client.search(q)
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
