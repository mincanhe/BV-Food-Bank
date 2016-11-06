class WelcomeController < ApplicationController
	def index
    	@name = params[:donor_name]
    	respond_to do |format|
      		format.html
      		format.xlsx {
    			response.headers['Content-Disposition'] = 'attachment; filename="Donor.xlsx"'
  			}
    	end
  	end
end