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
	message = region +'의 온도는 ' +(degree-273).round(2).to_s+'도 입니다.'
	res = Net::HTTP.post_form(uri, 'message' => message , 'access_token' => 'EAAQ06Kb0bSUBAEPKD7QTlWZBhHUlP5AGN6cyJpVXDX7VGu71y6qAtWwrrRZANC9ebRPTXdIgBg2qdvZC5ZC1VriJXhoxbKW21FU5S51joyarO3rCZChZCtJaPZC1UqJNAf2cIC9h7CpIxSVTTQZAHOfcHX3RkIT3wvdDa23ZBND9GZAIoIOHrThyuJ|hH749nuHwPgvgDNuF9I_Ua74ssQ')
	puts res.body
	redirect_to :back

  end
end
