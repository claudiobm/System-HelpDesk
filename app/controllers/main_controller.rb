class MainController < ApplicationController
  
  def index
    render :text => "<pre>#{params.to_yaml}</pre>"
    return
  end
  
end
