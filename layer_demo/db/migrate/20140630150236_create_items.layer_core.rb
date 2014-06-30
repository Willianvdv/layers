# This migration comes from layer_core (originally 20140127210108)
# -*- encoding : utf-8 -*-
class CreateItems < ActiveRecord::Migration
  def change
    create_table :items, id: :uuid do |t|
      t.string :name
      t.hstore :properties

      t.timestamps
    end
  end
end