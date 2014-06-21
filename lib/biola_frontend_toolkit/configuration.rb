module BiolaFrontendToolkit
  class Configuration
    attr_accessor :app_name
    attr_accessor :app_version
    attr_accessor :relative_root
    attr_accessor :app_links

    def initialize
      @app_name = 'App Name'
      @app_version = ''
      @relative_root = '/'
      @app_links = []
    end
  end
end