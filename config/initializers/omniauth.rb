Rails.application.config.middleware.use OmniAuth::Builder do
  provider :facebook, ENV['FACEBOOK_KEY'], ENV['FACEBOOK_SECRET']
  provider :twitter, ENV['TWITTER_KEY'], ENV['TWITTER_SECRET']
  provider :github, ENV['GITHUB_KEY'], ENV['GITHUB_SECRET']
  provider :google_oauth2, ENV['GOOGLE_KEY'], ENV['GOOGLE_SECRET']
  provider :lastfm, ENV['LASTFM_KEY'], ENV['LASTFM_SECRET']
  provider :linkedin, ENV['LINKEDIN_KEY'], ENV['LINKEDIN_SECRET']
  provider :tumblr, ENV['TUMBLR_KEY'], ENV['TUMBLR_SECRET']
  provider :flickr, ENV['FLICKR_KEY'], ENV['FLICKR_SECRET']
  provider :stackexchange, ENV['STACKEXCHANGE_KEY'], ENV['STACKEXCHANGE_SECRET'], public_key: ENV['STACKEXCHANGE_PUBLIC_KEY'] 
end