class ToolController < ApplicationController
  def view
    @tool = ProgrammingLanguage.find(params[:id])
    @users = @tool.users.order(:name).paginate(:page => params[:page], :per_page => 5)
  end
end
