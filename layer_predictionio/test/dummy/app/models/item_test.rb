# -*- encoding : utf-8 -*-

require 'test_helper'

class ItemTest < ActiveSupport::TestCase
  setup do
    @item = FactoryGirl.create :item
  end

  test '.not_synced_with_predictionio will return all unsynced events' do
    assert_equal [@item], Item.not_synced_with_predictionio
  end
end
