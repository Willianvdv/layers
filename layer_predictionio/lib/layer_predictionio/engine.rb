require 'progressbar'
require 'layer_core/engine'

module LayerPredictionio
  class Engine < ::Rails::Engine
    isolate_namespace LayerPredictionio

    def self.activate
      Dir.glob(File.join(File.dirname(__FILE__), "../../app/**/*_decorator*.rb")) do |c|
        Rails.configuration.cache_classes ? require(c) : load(c)
      end
    end
    config.to_prepare &method(:activate).to_proc

    config.railties_order = [LayerCore::Engine, LayerPredictionio::Engine, :all]
  end
end
