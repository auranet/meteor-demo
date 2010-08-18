module Meteor
  module Widget
    module RemoteLayout
      # You've generated a new Meteor Widget!
      #
      # Your new widget can be rendered with the following:
      #
      # <%= render_meteor_widget(::Meteor::Widget::RemoteLayout::Spec.new(...) -%>
      #   
      # This renders its partial, app/views/meteor/remote_layout/_render.rhtml.
      #
      # In your partial you can get a hold of your spec object with a local cal

      class Spec < ::Meteor::SpecBase
        
        attr_accessor :url, :credentials, :remote_dom_id # to replace with local content
        
        def initialize(options={},&block)
          super(options,&block)
        end
      end
    end
  end
end
