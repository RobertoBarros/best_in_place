require 'rails/railtie'

module BestInPlace
  class Railtie < ::Rails::Railtie #:nodoc:
    initializer 'best_in_place.view_helpers' do
      ActiveSupport.on_load(:action_view) do
        include BestInPlace::BestInPlaceHelpers
      end
    end
  end
end
