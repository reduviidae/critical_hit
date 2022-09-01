class Api::V1::UsersController < ApplicationController
  attr_accessor :attracted_to, :birth_date, :display_name, :email, :password, :phone, :queers_only,
                :steam_profile_name, :t4t_only

  def index
    @users = User.all
    render json: @users
  end

  def show
    @user = User.find(params[:id])
    render json: @user
  end

  def create
    if Creation::User.call(user_params)
      render json: user
    else
      render json: { errors: @user.errors }, status: :unprocessable_entity
    end
  end

  private

  def user_params # rubocop:disable Metrics/MethodLength
    params.require(:user).permit(
      :attracted_to,
      :birth_date,
      :display_name,
      :email,
      :password_digest,
      :phone,
      :queers_only,
      :steam_profile_name,
      :t4t_only,
    )
  end
end
