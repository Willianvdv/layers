require 'pusher'

module LayerPusher
  class Engine < ::Rails::Engine
    isolate_namespace LayerPusher

    ::Pusher.app_id = ENV['pusher_api_id']
    ::Pusher.key = ENV['pusher_key']
    ::Pusher.secret = ENV['pusher_secret']
    ::Pusher.url = ENV['pusher_url'] unless ENV['pusher_url'].blank?
  end
end
