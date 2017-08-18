class CreateShows < ActiveRecord::Migration
  def change
    create_table :shows do |t|
      t.string :title
      t.text :content
      t.string :group
      t.belongs_to :user
      
      t.timestamps null: false
    end
  end
end
