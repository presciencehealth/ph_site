class DemosController < ApplicationController

  def new 
    @demo = Demo.new
  end

  def create
    @demo = Demo.new(params[:demo])
    @demo.request = request
    if @demo.deliver
      flash.now[:error] = nil
  render "demos/success", notice: 'Message sent successfully'
    else
      flash.now[:error] = 'Cannot send message'
      render :new
    end
  end
end