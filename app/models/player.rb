class Player < ActiveRecord::Base
  attr_accessible :name, :player_id, :team_id
  
  belongs_to :team


end
