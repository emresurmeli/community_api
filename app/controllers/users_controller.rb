class UsersController < ApplicationController
  before_action :doorkeeper_authorize!

  def new
    @user = User.new
  end

  def show
    render json: current_resource_owner.as_json
    # current_resource_owner.as_json(except: :password_digest)
  end

  def create
    @user = User.new(user_params)
    if @user.save
      session[:user_id] = @user.id
      flash[:success] = "Welcome!"
      redirect_to root_path
    else
      render :new
    end
  end

  private

  def user_params
    params.require(:user).permit(:email, :password, :zipcode, :password_confirmation)
  end

  def current_resource_owner
    User.find(doorkeeper_token.resource_owner_id) if doorkeeper_token
  end
end
