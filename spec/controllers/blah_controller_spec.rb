require 'spec_helper'
require RAILS_ROOT + "/vendor/plugins/meteor/init.rb"

describe BlahController do
  
  before(:all) do
    @content = render_meteor_widget(::Meteor::Widget::RemoteContent::Spec.new(:url           => "http://www.aura-software.com",
                                                                              :remote_dom_id => ".section.content-body",
                                                                              :partial       => "blah/test.rhtml"))
  end
  
  it "should render the specified remote content" do
    @content.should match(/200 *OK/)
  end
  
  it "should replace content with the provided partial"
  
end
