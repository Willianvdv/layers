require 'ruby-progressbar'

namespace :predictionio do
  task :push do
    pushable_events = Event.where('predictionio_synced_at is null')
    predictionio_client ||= PredictionIO::Client.new ENV["PREDICTIONIO_API_KEY"]
    progress_bar = ProgressBar.create(total: pushable_events.count)

    pushable_events.find_each do |event, index|
      event.predictionio_client = predictionio_client
      event.sync_with_predictionio
      progress_bar.increment
    end
  end
