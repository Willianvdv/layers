require 'pusher'

module LayerPusher
  class Engine < ::Rails::Engine
    isolate_namespace LayerPusher

    Pusher.app_id = ENV['pusher_api_id']
    Pusher.key = ENV['pusher_key']
    Pusher.secret = ENV['pusher_secret']
    Pusher.url = ENV['pusher_url'] unless ENV['pusher_url'].blank?

    def self.activate
      Dir.glob(File.join(File.dirname(__FILE__), "../../app/**/*_decorator*.rb")) do |c|
        Rails.configuration.cache_classes ? require(c) : load(c)
      end
    end
    config.to_prepare &method(:activate).to_proc
  end
end
