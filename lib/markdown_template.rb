module ActionView
  module TemplateHandlers
    class MarkdownTemplate < ERB
      def compile(template)
        src = super
        "_markdown_proc = proc {\n#{src}\n}; RDiscount.new(_markdown_proc.call).to_html"
      end

      def cache_fragment(block, name = {}, options = nil) #:nodoc:
        @view.fragment_for(block, name, options) do
          render_markdown(eval(ActionView::Base.erb_variable, block.binding))
        end
      end

      private
      def render_markdown(result)
        RDiscount.new(result).to_html
      end
    end
  end

  Template.register_template_handler :markdown, TemplateHandlers::MarkdownTemplate
end
