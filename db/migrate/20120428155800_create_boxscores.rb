class CreateBoxscores < ActiveRecord::Migration
  def change
    create_table :boxscores do |t|
      t.integer :game_id
      t.integer :player_id
      t.decimal :points
      t.decimal :rebounds
      t.decimal :assists
      t.decimal :blocks
      t.decimal :steals
      t.decimal :turnovers
      t.decimal :fgattempted
      t.decimal :fgmade
      t.decimal :threepointattempted
      t.decimal :threepointmade

      t.timestamps
    end
  end
end
