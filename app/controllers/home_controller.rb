class HomeController < ApplicationController
	# impressionist
  def index
  	@accounts = Account.all
  end
end
