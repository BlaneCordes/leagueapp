class Team < ActiveRecord::Base
  attr_accessible :name, :team_id
  
  has_many :players 
  
  has_many :home_games, :class_name => Game, :foreign_key => :home_team_id
  has_many :away_games, :class_name => Game, :foreign_key => :away_team_id
  
   
  def wins
    [self.away_games, self.home_games].flatten.select do |g|
      g.winner?(self)
    end
  end 
  
  def losses
    [self.away_games, self.home_games].flatten.select do |g|
      g.loser?(self)
    end
  end



end
