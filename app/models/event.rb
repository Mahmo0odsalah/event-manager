class Event < ApplicationRecord
  belongs_to :host, class_name: "User"
  has_many :guest_lists, foreign_key: :occasion_id
  has_many :guests, through: :guest_lists
end
