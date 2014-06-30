require 'rails-api'
require 'active_model_serializers'
require 'layer_api/permitted_attributes'

module LayerApi
  class Engine < ::Rails::Engine
    isolate_namespace LayerApi
  end
end
