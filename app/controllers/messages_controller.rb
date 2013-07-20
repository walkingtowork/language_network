class MessagesController < ApplicationController
  def index
    @messages = Message.all
  end

  def show
    @message = Message.find(params[:id])
  end

  def new
    @message = Message.new
  end

  def create
    @message = Message.new(params[:message])
    if @message.save
      redirect_to "messages_index"
    else
      render :new
    end
  end

  def destroy
    @message = Message.find(params[:id])
    @message.destroy
  end
end
