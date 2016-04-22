class AddTypeEventToEvents < ActiveRecord::Migration
  def change
    add_column :events, :type_event, :string
  end
end
