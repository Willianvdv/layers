require 'concerns/predictionio_syncable'

Item.class_eval do
  include PredictionioSyncable
end
