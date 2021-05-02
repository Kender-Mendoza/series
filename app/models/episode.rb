class Episode < ApplicationRecord
  belongs_to :serie, touch: true

  validates :number, uniqueness: true
  validates :name, uniqueness: true
end
