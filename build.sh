#!/bin/bash

set -e

DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

cd $DIR/layer_core
bundle install --quiet
RAILS_ENV=test bundle exec rake db:create
RAILS_ENV=test bundle exec rake db:migrate
bundle exec rake test

cd $DIR/layer_api
bundle install --quiet
RAILS_ENV=test bundle exec rake db:create
RAILS_ENV=test bundle exec rake db:migrate
bundle exec rake test

cd $DIR/layer_pusher
bundle install --quiet
RAILS_ENV=test bundle exec rake db:create
RAILS_ENV=test bundle exec rake db:migrate
bundle exec rake test

cd $DIR/layer_predictionio
bundle install --quiet
RAILS_ENV=test bundle exec rake db:create
RAILS_ENV=test bundle exec rake db:migrate
bundle exec rake test

cd $DIR
