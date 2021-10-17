class TopsController < ApplicationController
  def index
    @comments = Comment.all
    
  end
end
