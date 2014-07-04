module PredictionioSyncable
  extend ActiveSupport::Concern

  included do
    scope :not_synced_with_predictionio, -> { where 'predictionio_synced_at is null' }
  end
end
