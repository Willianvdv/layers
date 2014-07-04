require 'concerns/predictionio'

User.class_eval do
  include Predictionio

  def sync_with_predictionio

  end
end
