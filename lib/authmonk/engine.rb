require 'rails'
require 'devise'
require 'mongoid_roles'

module Authmonk
  class Engine < Rails::Engine
    isolate_namespace ::Authmonk
  end
end

