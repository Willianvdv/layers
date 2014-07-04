require 'concerns/predictionio'

Item.class_eval do
  include Predictionio

  def sync_with_predictionio

  end
end
