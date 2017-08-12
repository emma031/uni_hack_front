class CreateAuditionComments < ActiveRecord::Migration
  def change
    create_table :audition_comments do |t|
      t.belongs_to :user
      t.belongs_to :audition
      t.text :content
      t.timestamps null: false
    end
  end
end
