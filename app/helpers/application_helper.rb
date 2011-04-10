module ApplicationHelper

#Return a title on a per-page basis.
		def title
			base_title = "Swarm Beta"
			if @title.nil?
				base_title
			else
				"#{base_title} | #{@title}"
			end
		end

    def logo
      image_tag("swarmlogowhitetextonly.png", :alt => "Swarm", :border => 0)
    end
end

