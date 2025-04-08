require 'rails/railtie'
require_relative 'helper'

module BestInPlace
  class Railtie < ::Rails::Railtie #:nodoc:
    initializer 'best_in_place.view_helpers' do
      ActiveSupport.on_load(:action_view) do
        include BestInPlace::Helper
      end
    end
  end
end
