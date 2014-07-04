require 'concerns/predictionio'

Event.class_eval do
  include Predictionio

  def sync_with_predictionio
    user.sync_with_predictionio unless user.synced_with_predictionio?
    item.sync_with_predictionio unless item.synced_with_predictionio?

    predictionio_client.identify user.id
    predictionio_client.record_action_on_item event,
                                              item.id,
                                              prio_t: created_at

    update_attributes! predictionio_synced_at: DateTime.new
  end
end
