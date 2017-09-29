class MessagesController < ApplicationController
# @message = Message.find(params[:id])がset_messageで置き換わった
# show,edit,update,destroy の４つをさらにbefore_actionで４つのアクション前に
# set_messageを実行するように指定。４つのアクションにあったset_message
# もいらなくなる
  before_action :set_message, only: [:show, :edit, :update, :destroy]

  
  def index
     @messages = Message.all
  end
  
  def show
    
  end
  
  def new
    @message = Message.new
  end
  
  def create
    @message = Message.new(message_params) 
    # Message.new　モデルに新規メッセージを追加

    if @message.save
      flash[:success] = 'Message が正常に投稿されました'
      redirect_to @message
    else
      flash.now[:danger] = 'Message が投稿されませんでした'
      render :new
    end
  end
  
  def edit
    
  end
  
  def update
        

    if @message.update(message_params)
      flash[:success] = 'Message は正常に更新されました'
      redirect_to @message
    else
      flash.now[:danger] = 'Message は更新されませんでした'
      render :edit
    end
  end
  
  def destroy
    
    @message.destroy

    flash[:success] = 'Message は正常に削除されました'
    redirect_to messages_url
  end
  
end

private
  #文中繰り返し記述される@message = Message.find(params[:id])をまとめる
  def set_message
    @message = Message.find(params[:id])
  end

  # Strong Parameter
  def message_params
    params.require(:message).permit(:content)
  end
  