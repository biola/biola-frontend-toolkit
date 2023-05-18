require "biola_frontend_toolkit/version"
require "biola_frontend_toolkit/engine" if defined?(::Rails)
require "bootstrap"
require "slim"
require "font-awesome-rails"

module BiolaFrontendToolkit
  require 'biola_frontend_toolkit/configuration'

  def self.configure
    yield config
  end

  def self.config
    @config ||= Configuration.new
  end
end
