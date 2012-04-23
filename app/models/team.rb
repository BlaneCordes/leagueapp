class Team < ActiveRecord::Base
  attr_accessible :name, :team_id
  
  has_many :players 
  
  has_many :home_games, :class_name => Game, :foreign_key => :home_team_id
  has_many :away_games, :class_name => Game, :foreign_key => :away_game_id
  
 def team_players(team_id)
   x = Player.find_all_by_team_id(team_id)
   x.each do |player|
     player.name
   end
 end
 
 def find_players_names
   self.players.map do |x|
	   x.name
	end
 end
    
    
end
