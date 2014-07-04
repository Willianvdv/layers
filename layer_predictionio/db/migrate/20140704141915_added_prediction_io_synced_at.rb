class AddedPredictionIoSyncedAt < ActiveRecord::Migration
  def change
    add_column :users, :predictionio_synced_at, :datetime
    add_column :items, :predictionio_synced_at, :datetime
    add_column :events, :predictionio_synced_at, :datetime
  end
end
