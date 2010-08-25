require 'spec_helper'

describe BlahController do
  
  before(:all) do
    @content = ::Meteor::Widget::RemoteContent::Spec.new(:url           => "http://www.aura-software.com",
                                                         :remote_dom_id => ".section.content-body",
                                                         :partial       => "blah/test.rhtml").render
  end
  
  it "should render the specified remote content" do
    @content.should match(%r|</body>|)
  end
  
  it "should replace content with the provided partial" do
    @content.should match(%r|<div class="section content-body"><h3>Hello!</h3></div>|)
  end
  
end
