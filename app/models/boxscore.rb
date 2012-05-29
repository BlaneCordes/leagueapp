class Boxscore < ActiveRecord::Base
  attr_accessible :boxscore_id, :assists, :blocks, :fgattempted, :fgmade, :game_id, :player_id, :points, :rebounds, :steals, :threepointattempted, :threepointmade, :turnovers
  
  validates :player_id, :presence => true
  
  belongs_to :game 
  belongs_to :player 
  
  #TODO need to make this method work when the boxscore player ID is nil
  def player_name_id
    boxscore.player_id
  end
  
  def player_name(player_id)
  x = Player.find_by_id(player_id)
  if x.name.present?
  x.name
  else
      puts "Blank player name"
  end
end
  
  
end
