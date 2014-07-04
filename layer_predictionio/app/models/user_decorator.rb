require 'concerns/predictionio'

User.class_eval do
  include Predictionio

  def sync_with_predictionio
    predictionio_client.create_user(id)
    update_attributes! predictionio_synced_at: DateTime.new
  end
end
