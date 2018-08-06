class PagesController < ApplicationController
  after_action :track_action

  def index
    @locales = Ahoy::Event.all.group_by(&:locale).inject({}) do |event, (k,v)|
      event[k] = v.size
      event
    end
  end

  protected

  def track_action
    ahoy.track 'Visit', request.path_parameters.merge(locale: I18n.locale)
  end
end
