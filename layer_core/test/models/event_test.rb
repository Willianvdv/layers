# -*- encoding : utf-8 -*-
require 'test_helper'

class EventTest < ActiveSupport::TestCase
  setup do
    @event = FactoryGirl.build :event
  end

  test 'event is valid' do
    assert @event.valid?
  end
end
