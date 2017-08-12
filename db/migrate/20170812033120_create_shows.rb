class CreateShows < ActiveRecord::Migration
  def change
    create_table :shows do |t|
      t.string :title
      t.text :content

      t.timestamps null: false
    end
  end
end
