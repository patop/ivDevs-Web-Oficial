class CreateEvents < ActiveRecord::Migration
  def change
    create_table :events do |t|
      t.string :title
      t.text :description
      t.string :type
      t.references :teg, index: true, foreign_key: true
      t.datetime :date_event
      t.time :hour_start
      t.time :hour_finish
      t.string :address
      t.float :latitude
      t.float :longitude
      t.references :user, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
