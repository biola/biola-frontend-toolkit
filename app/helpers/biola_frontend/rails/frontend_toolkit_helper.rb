module BiolaFrontend
  module Rails
    module FrontendToolkitHelper

      def show_environment
        unless ::Rails.env.match(/prod/i)
          content_tag :span, ::Rails.env, class: 'label label-danger'
        end
      end

      def yield_or(name, or_content=nil, &block)
        if content_for?(name)
          content_for(name)
        elsif or_content
          or_content
        elsif block_given?
          yield(block)
        else
          ''
        end
      end

      def app_dropdown_link(dropdown, &block)
        link_options = {'class'=>'dropdown-toggle'}
        link_options = {'class'=>'dropdown-toggle', 'area-hidden'=>'true', 'data-toggle'=>'dropdown'} if dropdown
        link_to (dropdown ? '#' : BiolaFrontendToolkit.config.relative_root), link_options do
          yield if block_given?
        end
      end

      def app_link(app)
        icon_string = app[:icon].present? ? "#{fa_icon(app[:icon])} " : ''
        link_to app[:url] do
          (icon_string + app[:title]).html_safe
        end
      end

      # Replaces http:// and https:// with just //
      def strip_scheme(url)
        url.to_s.gsub(/\Ahttps?:/, '')
      end

      def schemeless_image_tag(url, options={})
        image_tag(strip_scheme(url), options)
      end

      # Call a `safe_params` helper method in the app to get a list of permitted
      # parameters (if one exists)
      # Return the default list otherwise (`action` and `controller`)
      def app_safe_params
        return safe_params if self.respond_to?(:safe_params)

        params.permit
      end
    end
  end
end
