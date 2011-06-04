module Segments
  class Engine < Rails::Engine
    config.autoload_paths += %W(#{config.root}/lib)

    def self.activate
      Dir.glob(File.join(File.dirname(__FILE__), "../app/**/*_decorator*.rb")) do |c|
        Rails.env.production? ? require(c) : load(c)
      end
      
      ActionView::Rendering.module_eval do
        def render_segment(segment_name = "")
          segment = Segment.find_by_key_and_locale(
            segment_name, 
            I18n.locale
          )
          render :text => segment.content.html_safe if segment
        end
      end
    end

    config.to_prepare &method(:activate).to_proc 
  end
end

