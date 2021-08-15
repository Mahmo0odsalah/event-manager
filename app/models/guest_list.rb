class GuestList < ApplicationRecord
  belongs_to :guest, class_name: "User"
  belongs_to :occasion, class_name: "Event"
end
