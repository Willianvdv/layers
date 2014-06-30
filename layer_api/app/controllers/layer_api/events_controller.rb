# -*- encoding : utf-8 -*-

module LayerApi
  class EventsController < ResourceController
    before_filter :load_resources, only: [:index]

    private

    def resource_attributes
      super.tap do |attributes|

        if (user_identifier = attributes.delete('user_identifier'))
          attributes[:user] = user_by_identifier user_identifier
        end

        if (item_identifier = attributes.delete('item_identifier'))
          attributes[:item] = item_by_identifier item_identifier
        end
      end
    end

    def item_by_identifier(identifier)
      Item.where(identifier: identifier.to_s).first_or_create!
    end

    def user_by_identifier(identifier)
      User.where(identifier: identifier.to_s).first_or_create!
    end
  end
end
