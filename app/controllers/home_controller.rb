class HomeController < ApplicationController
	before_action :authenticate_user!
	# impressionist
  def index
  	@accounts = Account.all
  end
end
