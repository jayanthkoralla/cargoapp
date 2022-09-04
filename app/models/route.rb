class Route < ApplicationRecord
    validates :source, presence: true
    validates :destination, presence: true

    belongs_to :driver
end
