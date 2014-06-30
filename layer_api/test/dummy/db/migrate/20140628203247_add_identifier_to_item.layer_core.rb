# This migration comes from layer_core (originally 20140526144209)
class AddIdentifierToItem < ActiveRecord::Migration
  def change
    add_column :items, :identifier, :string
  end
end
