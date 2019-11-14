class ApplicationController < ActionController::Base
  helper :all
  
  def hello
      render html: "hello, world!"
  end
  
  
  
  
end
