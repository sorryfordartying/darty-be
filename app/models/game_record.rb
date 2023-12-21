class GameRecord < ApplicationRecord
  validates_presence_of :game_type, :player, :number_of_darts
  validates_numericality_of :number_of_darts, :starting_score
  enum game_type: {
    cricket: "cricket",
    zero_one: "01"
  }
end
