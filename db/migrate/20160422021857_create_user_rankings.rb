class CreateUserRankings < ActiveRecord::Migration
  def change
    create_table :user_rankings do |t|
      t.references :ranking, index: true, foreign_key: true
      t.references :user, index: true, foreign_key: true
      t.integer :points
      t.text :description

      t.timestamps null: false
    end
  end
end
