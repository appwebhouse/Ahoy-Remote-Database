class PagesController < ApplicationController
  after_action :track_action

  def index
  end

  protected

  def track_action
    ahoy.track 'Visit', request.path_parameters
  end
end
