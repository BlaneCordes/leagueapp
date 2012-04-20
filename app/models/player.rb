class Player < ActiveRecord::Base
  attr_accessible :name, :team_id
  
  belongs_to :team
end
