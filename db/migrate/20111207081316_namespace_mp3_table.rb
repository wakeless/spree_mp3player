class NamespaceMp3Table < ActiveRecord::Migration
  def change
    rename_table :mp3s, :spree_mp3s
  end
end
