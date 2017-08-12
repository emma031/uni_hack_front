class CreatePlays < ActiveRecord::Migration
  def change
    create_table :plays do |t|
      t.string :title
      t.string :group
      t.string :genre
      t.string :songurl
      t.belongs_to :user
      t.timestamps null: false
    end
  end
end
