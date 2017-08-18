class CreateShowComments < ActiveRecord::Migration
  def change
    create_table :show_comments do |t|
      t.belongs_to :user
      t.belongs_to :show
      t.text :content
      t.timestamps null: false
    end
  end
end
