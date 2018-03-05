class Game < ApplicationRecord
  has_many :characters, dependent: :destroy
  validates :name, presence: true
end
