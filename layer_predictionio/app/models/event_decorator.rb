require 'concerns/predictionio_syncable'

Event.class_eval do
  include PredictionioSyncable
end
