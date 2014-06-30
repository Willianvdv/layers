# This migration comes from layer_core (originally 20140126134911)
# -*- encoding : utf-8 -*-
class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users, id: :uuid do |t|
      t.string :identifier
      t.hstore :properties

      t.timestamps
    end
  end
end
