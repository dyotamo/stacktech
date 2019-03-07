class MyStackController < ApplicationController
  before_action :authenticate_user!

  def index
    @programming_languages = current_user.programming_languages
    @utilities = current_user.utilities
    @devops = current_user.devops
    @business_tools = current_user.business_tools
  end

  def update
    ActiveRecord::Base.transaction do
      programming_languages = current_user.programming_languages
      programming_languages.destroy_all

      utilities = current_user.utilities
      utilities.destroy_all

      devops = current_user.devops
      devops.destroy_all

      business_tools = current_user.business_tools
      business_tools.destroy_all

      params[:mystack][:programming_languages].each do |tool|
        ProgrammingLanguagesUser.create(programming_language_id: tool, user: current_user)
      end

      params[:mystack][:utilities].each do |tool|
        UsersUtility.create(utility_id: tool, user: current_user)
      end

      params[:mystack][:devops].each do |tool|
        DevopsUser.create(devop_id: tool, user: current_user)
      end

      params[:mystack][:business_tools].each do |tool|
        BusinessToolsUser.create(business_tool_id: tool, user: current_user)
      end

      redirect_to mystack_path, notice: "Stack succesfully updated!"
    end
  end
end
