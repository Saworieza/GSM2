class ApplicationController < ActionController::Base
	def not_found
	  catch "*path", to: redirect_to('/'), via: :all
	end

	SSh shit
end
