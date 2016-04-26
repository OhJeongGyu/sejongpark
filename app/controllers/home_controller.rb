# require 'net/http'
require "http"


class HomeController < ApplicationController
  def index
  	
  	region = ["Seoul","Chuncheon","Gangneung","Daejeon","Cheongju","Daegu","Gwangju","Jeonju","Busan","Ulleung","Jeju"]
  	@region_json = []

  	region.each do |e|
  		# "http://api.openweathermap.org/data/2.5/weather?q="+e+"&appid=4321a224e1d0872c47a3c11a67ac40ea"
  		# json_temp = JSON.parse(HTTP.get("http://api.openweathermap.org/data/2.5/weather?q="+e+"&appid=4321a224e1d0872c47a3c11a67ac40ea"))

  		temp = {
  			"region" => e

  			#, "degree" => @seoul_res = HTTP.get("http://api.openweathermap.org/data/2.5/weather?q=seoul&appid=4321a224e1d0872c47a3c11a67ac40ea").to_s,
  			# "url" =>"http://openweathermap.org/img/w/"+json_temp["weather"][0]["icon"]+".png"
  		}
      # puts temp
  		@region_json.push(temp)
  		
   		# @region_url.push(e)
  	end

 
	@seoul_res = HTTP.get("http://api.openweathermap.org/data/2.5/weather?q=seoul&appid=4321a224e1d0872c47a3c11a67ac40ea").to_s
	# @incheon_res = HTTP.get("http://api.openweathermap.org/data/2.5/weather?q=busan&appid=4321a224e1d0872c47a3c11a67ac40ea").to_s
	# @test = "http://openweathermap.org/img/w/"+JSON.parse(HTTP.get("http://api.openweathermap.org/data/2.5/weather?q=busan&appid=4321a224e1d0872c47a3c11a67ac40ea"))["weather"][0]["icon"]+".png"
	
	# uri = URI('http://api.openweathermap.org/data/2.5/weather?q=sesoul,kr&appid=4321a224e1d0872c47a3c11a67ac40ea')
	# uri = URI('http://api.openweathermap.org/data/2.5/weather?q=Incheon,kr&appid=4321a224e1d0872c47a3c11a67ac40ea')


  end

  def get_seoul_degree
    seoul_res = JSON.parse(HTTP.get("http://api.openweathermap.org/data/2.5/weather?q=seoul&appid=4321a224e1d0872c47a3c11a67ac40ea"))["weather"][0]
    puts seoul_res
    # @seoul_res = HTTP.get("http://api.openweathermap.org/data/2.5/weather?q=seoul&appid=4321a224e1d0872c47a3c11a67ac40ea").to_s
  end


end
