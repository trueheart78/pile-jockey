class GameTitle < ApplicationRecord
  validates :name, uniqueness: true
end
