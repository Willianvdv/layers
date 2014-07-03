# -*- encoding : utf-8 -*-

require 'test_helper'

class EventTest < ActiveSupport::TestCase
  setup do
    @event = FactoryGirl.build :event
  end

  test 'after creation pusher will be notified' do
    Pusher.expects(:trigger)
    @event.save!
  end
end
