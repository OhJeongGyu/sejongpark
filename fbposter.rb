require "http"
require "Net/HTTP"



while true
	min = Time.now.minute
	puts min
	if min%5 ==0
		seoul_degree = JSON.parse(HTTP.get("http://api.openweathermap.org/data/2.5/weather?q=seoul&appid=4321a224e1d0872c47a3c11a67ac40ea"))["main"]["temp"]
		seoul_weather = JSON.parse(HTTP.get("http://api.openweathermap.org/data/2.5/weather?q=seoul&appid=4321a224e1d0872c47a3c11a67ac40ea"))["weather"][0]["description"]
		# puts seoul_degree
		# puts seoul_weather


		uri = URI('https://graph.facebook.com/471697353029596/feed')
		message = Time.now.to_s + "날씨 정보 \n"  + "온도 : " + (seoul_degree-273).to_s + "\n날씨 : "   + seoul_weather.to_s

		res = Net::HTTP.post_form(uri, 'message' => message, 'access_token' => 'token')
		puts res.body
	else
		sleep 30
	end
	
end

