# -*- encoding : utf-8 -*-

require 'test_helper'

class EventTest < ActiveSupport::TestCase
  setup do
    @event = FactoryGirl.create :event
    @predictionio_client = mock()
    @predictionio_client.stubs(:identify)
    @predictionio_client.stubs(:record_action_on_item)

    @event.stubs(:predicitionio_client).returns(@predictionio_client)
  end

  test '.not_synced_with_predictionio will return all unsynced events' do
    assert_equal [@event], Event.not_synced_with_predictionio
  end

  test '.synced_with_predictionio? should be false if unsynced' do
    refute @event.synced_with_predictionio?
  end

  test 'syncing with predictionio will sync user' do
    @event.user.expects(:sync_with_predictionio)
    @event.sync_with_predictionio
  end

  test 'syncing with predictionio will sync item' do
    @event.item.expects(:sync_with_predictionio)
    @event.sync_with_predictionio
  end

  test 'event gets synced with predictionio' do
    @predictionio_client.expects(:record_action_on_item)
                        .with('view', @event.item.id, prio_t: @event.created_at)
    @event.sync_with_predictionio
  end

  test 'after syncing it wil be flaged as synced' do
    @event.sync_with_predictionio
    assert @event.synced_with_predictionio?
  end
end
