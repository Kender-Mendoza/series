class State < ApplicationRecord
  CONMING_SONG = 1
  CURRENTLY_AIRING = 2
  FINISHED_AIRING = 3

  has_many :series
end
