module BiolaFrontendToolkit
  class Configuration
    attr_accessor :app_name
    attr_accessor :app_version
    attr_accessor :relative_root
    attr_accessor :app_links
    attr_accessor :release_phase
    attr_accessor :ga_account
    attr_accessor :ga_domain

    def initialize
      @app_name = 'App Name'
      @app_version = ''
      @relative_root = '/'
      @app_links = []
      @ga_account = ''
      @ga_domain = 'biola.edu'
    end

    def release_phase_intro
      case release_phase
      when 'alpha'
        'This is a prototype'
      when 'beta'
        'This is a trial service'
      else
        ''
      end
    end
  end
end
