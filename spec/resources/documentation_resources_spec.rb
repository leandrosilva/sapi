require File.join(File.dirname(__FILE__), "..", "/spec_helper")

describe "Documentation Resource" do
  describe "get /documentation" do
    it "should respond with status 200 and body 'This is the SAPI - A simple template to build Sinatra-based API'" do
      get "/documentation"
      last_response.should be_ok
      last_response.body.should match /This is the SAPI - A simple template to build Sinatra-based API/
    end
  end
end
