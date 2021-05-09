class SerieType < ApplicationRecord
  SERIE = 1
  MOVIE = 2
  OVA = 3
  ESPECIAL = 4

  has_many :series
end
