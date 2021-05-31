require 'rails_helper'

RSpec.describe Card, type: :model do
  before do
    @card = FactoryBot.build(:card)
  end

  describe 'カード作成機能' do
    it 'card_titleが空では登録できない' do
      @card = Card.new(card_title: '', memo: 'メモ', list_id: 1)
      @card.card_title = '' 
      @card.valid?
      expect(@card.errors.full_messages).to include "カードタイトルは1文字以上で入力してください"
    end
    it 'list_idが空では登録できない' do
      @card = Card.new(card_title: 'タイトル', memo: 'メモ', list_id: '')
      @card.list_id = ''
      @card.valid?
      expect(@card.errors.full_messages).to include "Listを入力してください"
    end
  end
end
