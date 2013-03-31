module ApplicationHelper
#return title based on page
	def title
		if @title.nil?
			"Rate My Band"
		else
  		"Rate My Band | #{@title}"
  	end
	end
end
