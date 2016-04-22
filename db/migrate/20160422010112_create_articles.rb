class CreateArticles < ActiveRecord::Migration
  def change
    create_table :articles do |t|
      t.references :user, index: true, foreign_key: true
      t.references :tag, index: true, foreign_key: true
      t.references :category
      t.string :title
      t.text :body
      t.boolean :status
      t.string :slug

      t.timestamps null: false
    end
  end
end
