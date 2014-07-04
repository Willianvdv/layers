require 'concerns/predictionio'

Item.class_eval do
  include Predictionio

  def sync_with_predictionio
    predictionio_client.create_item(id, ["1"])
    update_attributes! predictionio_synced_at: DateTime.new
  end
end
