module Meteor
  module Widget
    module SimpleDhtmlMenu
      # You've generated a new Meteor Widget!
      #
      # Your new widget can be rendered with the following:
      #
      # <%= render_meteor_widget(::Meteor::Widget::SimpleDhtmlMenu::Spec.new(...) -%>
      #   
      # This renders its partial, app/views/meteor/simple_dhtml_menu/_render.rhtml.
      #
      # In your partial you can get a hold of your spec object with a local cal

      class Spec < ::Meteor::SpecBase
        
        attr_accessor :menu_items
        
        def initialize(options={},&block)
          self.menu_items = []
          super(options,&block)
        end
      end
    end
  end
end
