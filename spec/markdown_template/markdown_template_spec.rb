require File.dirname(__FILE__) + '/../spec_helper'
 
describe ActionView::TemplateHandlers::MarkdownTemplate do
  
  PATH = File.expand_path(File.dirname(__FILE__) + "/../resources")

  before(:each) do
    @view_mock = mock("View")
    @template = ActionView::TemplateHandlers::MarkdownTemplate.new(@view_mock)
  end

  def render(*args)
    ActionController::Base.view_paths = PATH
    result = ActionView::Base.new(ActionController::Base.view_paths , {}).render(*args)
  end
 
  describe "initialize" do
    it "should store view" do
      @template.instance_variable_get(:@view).should == @view_mock
    end
  end
  
  describe "render" do
    it "should return html generated from markdown" do
      render(:file => 'test.markdown').should == File.read(PATH + "/test.html")
    end
  end
  
end
 
