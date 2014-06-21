require "biola_frontend_toolkit/version"
require "biola_frontend_toolkit/engine" if defined?(::Rails)

module BiolaFrontendToolkit
  require 'biola_frontend_toolkit/configuration'

  def self.configure
    yield config
  end

  def self.config
    @config ||= Configuration.new
  end
end