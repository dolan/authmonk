require 'rails'
require 'devise'

module Authmonk
  class Engine < Rails::Engine
    isolate_namespace ::Authmonk
  end
end

