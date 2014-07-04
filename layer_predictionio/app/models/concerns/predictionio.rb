module Predictionio
  extend ActiveSupport::Concern

  included do
    scope :not_synced_with_predictionio, -> { where 'predictionio_synced_at is null' }
  end

  def synced_with_predictionio?
    !predictionio_synced_at.nil?
  end

  def predicitionio_client

  end
end
