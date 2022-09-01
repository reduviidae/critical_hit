class Api::V1::UsersController < ApplicationController
  def index
    @users = User.all
    render json: @users
  end

  private

  def user_params # rubocop:disable Metrics/MethodLength
    params.require(:user).permit(
      :attracted_to,
      :birth_date,
      :display_name,
      :email,
      :password,
      :phone,
      :queers_only,
      :steam_profile_name,
      :t4t_only,
    )
  end
end
