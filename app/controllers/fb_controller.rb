class FbController < ApplicationController
  def post
  	# puts "hello fb"
	# puts params[:id]
	region = params[:follow_button]
	uri_string = "http://api.openweathermap.org/data/2.5/weather?q="+ region +"&appid=4321a224e1d0872c47a3c11a67ac40ea"
	# puts uri_string

	degree = JSON.parse(HTTP.get(uri_string))["main"]["temp"]
	# puts degree
	uri = URI('https://graph.facebook.com/471697353029596/feed')
	message = region +"의 온도는 " +(degree-273).round(2).to_s+"도 입니다.\n" + Time.now.to_s

	res = Net::HTTP.post_form(uri, 'message' => message , 'access_token' => 'aa')
	puts res.body
	redirect_to :back

  end
end
