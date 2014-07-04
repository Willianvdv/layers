require 'concerns/predictionio_syncable'

Event.class_eval do
  include PredictionioSyncable

  def sync_with_predictionio
    
  end
end
