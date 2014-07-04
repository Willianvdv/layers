# -*- encoding : utf-8 -*-

require 'test_helper'

class UserTest < ActiveSupport::TestCase
  setup do
    @user = FactoryGirl.create :user
  end

  test '.not_synced_with_predictionio will return all unsynced events' do
    assert_equal [@user], User.not_synced_with_predictionio
  end
end
