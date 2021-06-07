class CardController < ApplicationController

  before_action :set_card, only: [:show, :edit, :update, :destroy]

  def new
    @card = Card.new
    @list = List.find(params[:list_id])
  end

  def create
    @card = Card.new(new_card_params)
    if @card.save
      redirect_to :root
    else
      render action: :new
    end
  end

  def show
  end

  def edit
    # @lists = List.where(user: current_user) 
    #card_titleを空で更新した時のundefined method `map' for nil:NilClass対策のためインスタンス変数は使用しない
    List.where(user: current_user)
  end

  def update
    if @card.update(edit_card_params)
      redirect_to :root
    else
      render action: :edit
    end
  end

  def destroy
    @card.destroy
    redirect_to :root
  end

  private
    def new_card_params
      params.require(:card).permit(:card_title, :memo).merge(list_id: params[:list_id])
    end

    def edit_card_params
      params.require(:card).permit(:card_title, :memo, :list_id)
    end

    def set_card
      @card = Card.find(params[:id])
    end

end
