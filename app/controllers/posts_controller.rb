class PostsController < ApplicationController
  def index
    require 'oauth'
    require 'json'

    consumer_key = 'BKWKNK4lSWCKzq-bwQB2Ew'
    consumer_secret = '0bs3EiPCArqukSdVxqtK8Y2XzZ0'
    token = '_hUpzo96j8cjHxB5m9EAcXFPm-2M0mtw'
    token_secret = 'HADyIRp9ZbX1ffi4NHUJM6AnAlw'

    api_host = 'api.yelp.com'

    consumer = OAuth::Consumer.new(consumer_key, consumer_secret, {:site => "http://#{api_host}"})
    access_token = OAuth::AccessToken.new(consumer, token, token_secret)

    path = '/v2/search?term=food&ll=37.788022,-122.399797&limit=5'

    @yelp_data = JSON(access_token.get(path).body)
  end
end
