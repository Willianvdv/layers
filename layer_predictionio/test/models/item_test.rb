# -*- encoding : utf-8 -*-

require 'test_helper'

class ItemTest < ActiveSupport::TestCase
  setup do
    @item = FactoryGirl.create :item
    @predictionio_client = mock()
    @predictionio_client.stubs(:create_item)
    @item.stubs(:predictionio_client).returns(@predictionio_client)
  end

  test '.not_synced_with_predictionio will return all unsynced items' do
    assert_equal [@item], Item.not_synced_with_predictionio
  end

  test 'item gets synced with predictionio' do
    @predictionio_client.expects(:create_item)
    @item.sync_with_predictionio
  end

  test '.synced_with_predictionio? should be false if unsynced' do
    refute @item.synced_with_predictionio?
  end

  test 'after syncing it wil be flaged as synced' do
    @item.sync_with_predictionio
    assert @item.synced_with_predictionio?
  end
end
