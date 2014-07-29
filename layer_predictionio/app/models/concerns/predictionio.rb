module Predictionio
  extend ActiveSupport::Concern

  included do
    attr_accessor :predictionio_client
    scope :not_synced_with_predictionio, -> { where 'predictionio_synced_at is null' }
  end

  def synced_with_predictionio?
    !predictionio_synced_at.nil?
  end
end
