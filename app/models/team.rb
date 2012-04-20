class Team < ActiveRecord::Base
  attr_accessible :name
  
  has_many :players 
  
  has_many :home_games, :class_name => Game, :foreign_key => :home_team_id
  has_many :away_games, :class_name => Game, :foreign_key => :away_game_id
end
