config = Rails.application.secrets

facebook_config = config.facebook
instagram_config = config.instagram
twitter_config = config.twitter

oauth = Koala::Facebook::OAuth.new(facebook_config['app_id'], facebook_config['app_secret'], facebook_config['callback_url'])
FBGraphAPI = Koala::Facebook::API.new(oauth.get_app_access_token)

Instagram.configure do |config|
   config.client_id = instagram_config['client_id']
end

TwitterAPI = Twitter::REST::Client.new do |config|
   config.consumer_key        = twitter_config['consumer_key']
   config.consumer_secret     = twitter_config['consumer_secret']
end
