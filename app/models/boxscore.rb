class Boxscore < ActiveRecord::Base
  attr_accessible :boxscore_id :assists, :blocks, :fgattempted, :fgmade, :game_id, :player_id, :points, :rebounds, :steals, :threepointattempted, :threepointmade, :turnovers

  belongs_to :game 
  belongs_to :player 

end
