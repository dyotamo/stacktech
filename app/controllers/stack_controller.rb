class StackController < ApplicationController
  def view
    @user = User.find_by!(slug: params[:slug])
  end
end
