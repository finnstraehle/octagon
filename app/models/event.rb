class Event < ApplicationRecord
  has_many :event_attendances, dependent: :destroy
end
