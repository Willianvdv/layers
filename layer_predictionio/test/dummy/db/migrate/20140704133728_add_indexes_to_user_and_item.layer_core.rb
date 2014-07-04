# This migration comes from layer_core (originally 20140603080716)
class AddIndexesToUserAndItem < ActiveRecord::Migration
  def change
    add_index :items, :identifier
    add_index :users, :identifier
  end
end
