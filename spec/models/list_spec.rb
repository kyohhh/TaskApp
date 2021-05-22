require 'rails_helper'

RSpec.describe List, type: :model do
  describe 'リスト作成機能' do
    it 'list_titleが空では登録できない' do
      list = List.new(list_title: '')
      list.list_title = '' 
      list.valid?
      expect(list.errors.full_messages).to include "List titleは1文字以上で入力してください"
    end
  end
end
