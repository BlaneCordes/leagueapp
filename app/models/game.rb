class Game < ActiveRecord::Base
  attr_accessible :boxscore_id, :game_id, :away_team_id, :home_team_id, :home_team, :away_team, :home_score, :away_score, :game_date
  
  validates :home_score, :presence => true
  validates :away_score, :presence => true
  
  has_many :boxscores

  belongs_to :home_team, :class_name => Team
  belongs_to :away_team, :class_name => Team
  
  def winner?(team = nil)
    winner = if self.home_score > self.away_score
      self.home_team
    elsif self.away_score > self.home_score
      self.away_team
    end
    
    if team
      team == winner
    else
      winner
    end
  end

  def loser?(team = nil)
    loser = if self.home_score < self.away_score
      self.home_team
    elsif self.away_score < self.home_score
      self.away_team
    end
    
    if team
      team == loser
    else
      loser
    end
  end

end  
