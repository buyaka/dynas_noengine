class DashboardController < ApplicationController
  before_filter :authenticate_member!
  before_filter :set_db

  def index
  end

  def apps
  end

  def resources
  end
end
