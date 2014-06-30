Rails.application.routes.draw do
  mount LayerApi::Engine  => "api", as: 'api'
end
