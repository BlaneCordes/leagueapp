class Boxscore < ActiveRecord::Base
  attr_accessible :boxscore_id, :assists, :blocks, :fgattempted, :fgmade, :game_id, :player_id, :points, :rebounds, :steals, :threepointattempted, :threepointmade, :turnovers
  
  belongs_to :game 
  belongs_to :player 
  
  def player_name(player_id)
    player = Player.find_by_id(player_id)
    player.name
end
end