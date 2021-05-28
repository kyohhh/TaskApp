class CardController < ApplicationController

  before_action :set_card, only: [:show, :edit, :update, :destroy]

  def new
    @card = Card.new
    @list = List.find(params[:list_id])
  end

  def create
    byebug
    @card = Card.new(card_params)
    if @card.save
      redirect_to :root
    else
      render action: :new
    end
  end

  def show
  end

  def edit
    # lists = List.where(user: current_user) #list_titleを空で更新した時のエラー対応のため
  end

  def update
    if @card.update(card_params)
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
    def card_params
      params.require(:card).permit(:card_title, :memo, :list_id).merge(list_id: params[:list_id])
    end

    def set_card
      @card = Card.find(params[:id])
    end

end
