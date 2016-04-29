require 'net/http'

class FbPosterController < ApplicationController
  def post_fb

	uri = URI('https://graph.facebook.com/471697353029596/feed')
	res = Net::HTTP.post_form(uri, 'message' => 'hey !', 'access_token' => 'CAACEdEose0cBAJ4K3cE8KcMZBn4YYZBvVJxeDb1VvvlBWFWoDy9Bx3LckZAKPZARAC9quw4zEDIENyGfFKJdZBr2AMRhMxVCdOTTVZC4YjxwQOEM5P0q2ajlvZBZC79pGRpAUd1BP7Tlxwk9JNZCz1a1bZA8HSQ3QTDMJRFFAG6tgit82XOFjvKZCcUcAP56oBI8t6PurQZBP4yOegZDZD')

	puts 'post hello'

	redirect_to '/index/home'
  end

end
