class Game < ActiveRecord::Base
  attr_accessible :away_team_id, :home_team_id, :home_team, :away_team, :home_score, :away_score
  
  belongs_to :home_team, :class_name => Team
  belongs_to :away_team, :class_name => Team
  
end
