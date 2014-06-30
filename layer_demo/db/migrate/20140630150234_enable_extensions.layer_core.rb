# This migration comes from layer_core (originally 20140126134910)
# -*- encoding : utf-8 -*-
class EnableExtensions < ActiveRecord::Migration
  def change
    enable_extension 'uuid-ossp'
    enable_extension 'hstore'
  end
end
