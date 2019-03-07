class SearchController < ApplicationController
  def index
    @text = params[:search][:text]
    redirect_to root_path if @text.nil? || @text.empty?
    @results = User.where('name like ?', "%#{@text}%").paginate(:page => params[:page], :per_page => 10)
  end
end
