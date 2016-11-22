class CommunitiesController < ApplicationController
  # before_action :doorkeeper_authorize!
  def index
    @current_user = User.find(session[:user_id])
    @my_community = Communities.where( zipcode: @current_user.zipcode )
    if @my_community == []
      @my_community = Communities.create( zipcode: @current_user.zipcode )
    end
    render json: @my_community
  end

end
