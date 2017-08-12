class CreatePlayLikes < ActiveRecord::Migration
  def change
    create_table :play_likes do |t|
      
      t.belongs_to :user
      t.belongs_to :play

      t.timestamps null: false
    end
  end
end
