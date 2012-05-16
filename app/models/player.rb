class Player < ActiveRecord::Base
  attr_accessible :name, :player_id, :team_id, :email
  has_many :boxscores
  
  belongs_to :team



end
