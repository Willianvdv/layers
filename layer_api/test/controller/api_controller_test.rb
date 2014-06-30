# # -*- encoding : utf-8 -*-
#
# require 'test_helper'
#
# module LayerApi
#   class AnonymousController < ApiController
#     # def index
#     #   render nothing: true
#     # end
#
#     def create
#       render nothing: true
#     end
#   end
# end
#
# class LayerApi::ApiControllerTest < ActionController::TestCase
#   tests LayerApi::AnonymousController
#
#   def with_anonymous_routes
#     with_routing do |set|
#       LayerApi::Engine.routes.draw do
#         get 'anonymous_index', to: 'anonymous#index'
#         get 'anonymous_create', to: 'anonymous#create'
#       end
#
#       yield
#     end
#   end
#
#   test 'with an api key you have access' do
#     with_anonymous_routes do
#       get :create, api_key: 'ABCDE', use_route: :layer_api
#       assert_response :success
#     end
#   end
#
#   test 'without an api key you dont have access' do
#     with_anonymous_routes do
#       get :create
#       assert_response :unauthorized
#     end
#   end
# end
