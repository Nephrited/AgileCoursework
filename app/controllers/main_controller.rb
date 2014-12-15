class MainController < ApplicationController
  def index
  	@title = "Home"
  end
  def about
  	@title = "About Us"
  end
  def join
  	@title = "How to Join"
  end
  def need
  	@title = "What You Need"
  end
  def programme
  	@title = Time.now.strftime("%Y")+" Programme"
  	@events = Events.order('date ASC').all
  end
  def newsletters
  	@title = "Newsletters"
    @newsletters = Newsletters.order('date ASC').all
  end
  def matters
  	@title = "Club Matters"
  end
  def location
  	@title = "How to Get There"
  end
  def book
  	@title = "Book a Lawn"
    @bookings = Bookings.order('id ASC')
  end
  def download
    send_file './public/'+params[:file], :type=>"application/pdf" 
  end

  def bookit
    booking = Bookings.find(params[:id])
    booking.booked = true
    booking.save
    redirect_to action: 'book'
  end
end
