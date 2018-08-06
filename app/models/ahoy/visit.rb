class Ahoy::Visit < ApplicationRecord
  self.table_name = 'ahoy_visits'

  has_many :events, class_name: 'Ahoy::Event'
  belongs_to :user, optional: true

  establish_connection :remote_db

  after_create :geocode

  private

  def geocode
    Ahoy::GeocodeJob.perform_now(self)
  end
end
