# -*- encoding : utf-8 -*-

require 'test_helper'

class EventTest < ActiveSupport::TestCase
  setup do
    @event = FactoryGirl.create :event
  end

  test '.not_synced_with_predictionio will return all unsynced events' do
    assert_equal [@event], Event.not_synced_with_predictionio
  end
end
