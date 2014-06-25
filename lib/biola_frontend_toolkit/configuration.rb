module BiolaFrontendToolkit
  class Configuration
    attr_accessor :app_name
    attr_accessor :app_version
    attr_accessor :relative_root
    attr_accessor :app_links
    attr_accessor :profile_links
    attr_accessor :release_phase

    def initialize
      @app_name = 'App Name'
      @app_version = ''
      @relative_root = '/'
      @app_links = []
      @profile_links = []
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
