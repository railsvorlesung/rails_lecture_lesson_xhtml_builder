require 'rubygems'
gem 'rspec'

require File.dirname(__FILE__) + "/../lib/xhtml_builder"

describe XHTMLBuilder do
  
  before(:each) do
    @b = XHTMLBuilder.new
  end
  
  it "should generate an empty html tag" do
    @b.html {}.should eql("<html>\n</html>\n")
  end  
  
  it "should generate a p tag by using an argument" do
    @b.p("test").should eql("<p>\ntest\n</p>\n")
  end
  
  it "should test" do
    @b.html do
      @b.head do
        @b.title("My Fancy Webpage")
      end
      @b.body do
        @b.p("this is my body")
      end
    end
    @b.content.should eql("<html>\n<head>\n<title>\nMy Fancy Webpage\n</title>\n</head>\n<body>\n<p>\nthis is my body\n</p>\n</body>\n</html>\n")    
  end
end