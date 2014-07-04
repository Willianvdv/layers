require 'concerns/predictionio_syncable'

User.class_eval do
  include PredictionioSyncable
end
