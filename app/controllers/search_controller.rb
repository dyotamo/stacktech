class SearchController < ApplicationController
  def index
    @text = params[:search][:text]
    @results = %w{}
  end
end
