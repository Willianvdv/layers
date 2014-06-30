# -*- encoding : utf-8 -*-

module LayerApi
  class UsersController < ResourceController
    before_filter :load_resource, only: [:update]
  end
end
