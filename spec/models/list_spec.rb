require 'rails_helper'

RSpec.describe List, type: :model do
  before do
    @list = FactoryBot.build(:list)
  end

  describe 'リスト作成機能' do
    it 'list_titleが空では登録できない' do
      @list.list_title = '' 
      @list.valid?
      expect(@list.errors.full_messages).to include "List titleは1文字以上で入力してください"
    end
    it 'user_idが空では登録できない' do
      @list.user_id = '' 
      @list.valid?
      expect(@list.errors.full_messages).to include "Userを入力してください"
    end
  end
end
