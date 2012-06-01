class Player < ActiveRecord::Base
  attr_accessible :name, :player_id, :team_id, :email
  has_many :boxscores
  
  has_many :games, :through => :team
  
  belongs_to :team

  def games
    self.team.games
  end

end
