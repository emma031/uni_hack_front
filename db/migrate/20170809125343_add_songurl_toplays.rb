class AddSongurlToplays < ActiveRecord::Migration
  def change
      add_column :plays, :songurl, :string
  end
end
