Event.class_eval do
  after_create :push_event_creation_to_pusher

  private

  def push_event_creation_to_pusher
      Pusher.trigger 'event', 'created', attributes
    rescue Pusher::Error => pusher_error
      logger.error pusher_error
  end
end
