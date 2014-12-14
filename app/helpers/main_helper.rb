module MainHelper
	def title
		base_title = "CHEAM Croquet & Bowls Club"
		if @title.nil?
			base_title
		else
			"#{base_title} | #{@title}"
		end
	end
end
