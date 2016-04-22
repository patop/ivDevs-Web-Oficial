class RemoveTypeEventFromEvents < ActiveRecord::Migration
  def change
    remove_column :events, :type_event, :string
    add_column :events, :type_event, :integer
  end
end
