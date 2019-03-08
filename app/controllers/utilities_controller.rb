class UtilitiesController < ApplicationController
  before_action :authenticate_user!
  before_action :set_utility, only: [:view, :update, :destroy]

  def view
  end

  def update
    @utility.details = utilities_params[:details]
    @utility.save
    redirect "Utility updated successfully!"
  end

  def new
    @utility = UsersUtility.new
  end

  def create
    @utility = UsersUtility.new(utilities_params)
    @utility.user = current_user

    if @utility.valid?
      @utility.save
      redirect "Utility added successfully!"
    else
      render "new"
    end
  end

  def destroy
    @utility.destroy
    redirect "Utility removed successfully!"
  end

  private

  def utilities_params
    params.require(:users_utility).permit(:utility_id, :details)
  end

  def set_utility
    @utility = UsersUtility.find_by!(user: current_user, utility_id: params[:id])
  end

  def redirect(message)
    redirect_to mystack_url, notice: message
  end
end
