class CommunitiesController < ApplicationController
  before_action :doorkeeper_authorize!

  def show
    @community = Communities.all
  end

  def index
    @community = Communities.all
  end

end
