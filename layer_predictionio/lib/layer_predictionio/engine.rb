require 'layer_core/engine'

module LayerPredictionio
  class Engine < ::Rails::Engine
    isolate_namespace LayerPredictionio

    config.railties_order = [LayerCore::Engine, LayerPredictionio::Engine, :all]
  end
end
