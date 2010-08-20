require 'spec_helper'

describe BlahController do
  
  before(:all) do
    @content = ::Meteor::Widget::RemoteContent::Spec.new(:url           => "http://www.aura-software.com",
                                                         :remote_dom_id => ".section.content-body",
                                                         :partial       => "blah/test.rhtml").render
  end
  
  it "should render the specified remote content" do
    @content.should match(/200 *OK/)
  end
  
  it "should replace content with the provided partial"
  
end
