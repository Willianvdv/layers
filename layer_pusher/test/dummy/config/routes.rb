Rails.application.routes.draw do

  mount LayerPusher::Engine => "/layer_pusher"
end
