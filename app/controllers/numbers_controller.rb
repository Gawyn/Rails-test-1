class NumbersController < ApplicationController
  def create
    @number = params[:number].to_i.in_words if params[:number]
    render :action => 'new'
  end

  def new
  end
end
