require 'reloader/sse'

class StreamController < ApplicationController
	include ActionController::Live

  def bookings
  	response.headers['Content-Type'] = 'text/event-stream'

#  	bookings = Bookings.all

  	sse = Reloader::SSE.new(response.stream)
  	begin
  		loop do
  			bookings = Bookings.all
	  		bookings.each do |book|
	  			sse.write({:id => book.id,:booked => book.booked}, :event=>'update')
	  			sleep 0.1
	  		end
	  		bookings = null
  		end
  	rescue
  ensure
  	sse.close
  end
end
end
