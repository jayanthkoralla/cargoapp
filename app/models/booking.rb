class Booking < ApplicationRecord
  belongs_to :driver
  belongs_to :customer
end
