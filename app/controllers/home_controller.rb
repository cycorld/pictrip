class HomeController < ApplicationController
  def index
    if user_signed_in?
      redirect_to destinations_path
    end
    
  end
end
