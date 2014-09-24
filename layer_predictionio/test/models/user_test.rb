# -*- encoding : utf-8 -*-

require 'test_helper'

class UserTest < ActiveSupport::TestCase
  setup do
    @user = FactoryGirl.create :user
    @predictionio_client = mock()
    @predictionio_client.stubs(:create_user)
    @user.stubs(:predictionio_client).returns(@predictionio_client)
  end

  test '.not_synced_with_predictionio will return all unsynced users' do
    assert_equal [@user], User.not_synced_with_predictionio
  end

  test 'user gets synced with predictionio' do
    @predictionio_client.expects(:create_user).with(@user.id)
    @user.sync_with_predictionio
  end

  test '.synced_with_predictionio? should be false if unsynced' do
    refute @user.synced_with_predictionio?
  end

  test 'after syncing it wil be flaged as synced' do
    @user.sync_with_predictionio
    assert @user.synced_with_predictionio?
  end
end
