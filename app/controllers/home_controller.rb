class HomeController < ApplicationController
  def index
    flash[:notice] = "Hi!"
  end

end
