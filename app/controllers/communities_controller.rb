class CommunitiesController < ApplicationController
  # before_action :authenticate

  def index
    @community = Communities.all
  end


  def authenticate
    authenticate_or_request_with_http_token do |token, options|
      User.find_by(auth_token: token)
    end
  end

end
