class MainController < ApplicationController
  include ActionController::Live

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
  end
  def download
    send_file './public/'+params[:file], :type=>"application/pdf" 
  end
end
