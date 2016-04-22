class RemoveTegIdFromEvents < ActiveRecord::Migration
  def change
    remove_reference :events, :teg, index: true, foreign_key: true
  end
end
