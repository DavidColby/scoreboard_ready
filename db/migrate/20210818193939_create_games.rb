class CreateGames < ActiveRecord::Migration[6.1]
  def change
    create_table :games do |t|
      t.string :home_team
      t.string :away_team
      t.integer :home_team_score
      t.integer :away_team_score

      t.timestamps
    end
  end
end
