class Player < ActiveRecord::Base
  attr_accessible :name, :player_id, :team_id, :email
  has_many :boxscores
  
  has_many :games, :through => :home_team, :class_name => Team
  
  belongs_to :team



end
