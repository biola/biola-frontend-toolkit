module BiolaFrontendToolkit
  class Configuration
    attr_accessor :app_name
    attr_accessor :app_version
    attr_accessor :relative_root
    attr_accessor :app_links
    attr_accessor :profile_links
    attr_accessor :release_phase
    attr_accessor :ga_account
    attr_accessor :ga_domain
    attr_accessor :ga_enabled

    def initialize
      @app_name = 'App Name'
      @app_version = ''
      @relative_root = '/'
      @app_links = []
      @profile_links = []

      # Google Analytics
      @ga_account = ''
      @ga_domain = 'biola.edu'
      @ga_enabled = false
    end
  end
end
