Rails.application.routes.draw do

  mount LayerPredictionio::Engine => "/layer_predictionio"
end
