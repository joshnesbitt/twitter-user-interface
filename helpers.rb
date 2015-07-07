include Twitter::Autolink

def format_date(date)
  date.strftime('%e/%m/%Y at %H:%M')
end

def render_tweet_content(tweet)
  auto_link(tweet.text,
    username_include_symbol: true,
    username_url_base: '/profile/',
    hashtag_url_base: '/hashtag/'
  )
end

def link_to(name, path = nil, options = {})
  path = name if path.nil?
  %{<a href="#{path}">#{name}</a>}
end
