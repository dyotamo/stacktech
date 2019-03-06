class HomeController < ApplicationController
  def index
    @users = User.order(:name).paginate(:page => params[:page], :per_page => 10)
  end
end
