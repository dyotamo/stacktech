class ProgrammingLanguagesController < ApplicationController
  before_action :authenticate_user!
  before_action :set_language, only: [:view, :update, :destroy]

  def view
  end

  def update
    @language.details = languages_params[:details]
    @language.save
    redirect "Language updated successfully!"
  end

  def new
    @language = ProgrammingLanguagesUser.new
  end

  def create
    @language = ProgrammingLanguagesUser.new(languages_params)
    @language.user = current_user

    if @language.valid?
      @language.save
      redirect "Language added successfully!"
    else
      render "new"
    end
  end

  def destroy
    @language.destroy
    redirect "Language removed successfully!"
  end

  private

  def languages_params
    params.require(:programming_languages_user).permit(:programming_language_id, :details)
  end

  def set_language
    @language = ProgrammingLanguagesUser.find_by!(user: current_user, programming_language_id: params[:id])
  end

  def redirect(message)
    redirect_to mystack_url, notice: message
  end
end
