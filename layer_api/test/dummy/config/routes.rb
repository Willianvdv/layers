Rails.application.routes.draw do
  mount LayerApi::Engine  => "layer_api", as: 'layer_api'
end
