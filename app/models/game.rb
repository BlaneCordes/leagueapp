class Game < ActiveRecord::Base
  attr_accessible :away_team_id, :home_team_id, :home_team, :away_team, :home_score, :away_score, :game_date
  validates :home_score, :presence => true
  validates :away_score, :presence => true

  belongs_to :home_team, :class_name => Team
  belongs_to :away_team, :class_name => Team

end  
  # def home_wins(game)
  #     #if home_score is greater than away_score
  #     if game.home_score > game.away_score
  #     #add 1 to an array
  #       a = [] << 1
  #     #sum up the array for home wins
  #     puts a.count
  #     end
  #   end
  # end

