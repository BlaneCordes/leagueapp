class Player < ActiveRecord::Base
  attr_accessible :name, :player_id, :team_id
  has_many :boxscores
  
  belongs_to :team



end
