require 'rails_helper'

RSpec.describe User, type: :model do
  before do
    @user = FactoryBot.build(:user)
  end

  describe 'ユーザー新規登録' do
    it 'nameが空では登録できない' do
      @user.name = '' 
      @user.valid?
      expect(@user.errors.full_messages).to include "ニックネームを入力してください"
    end
    it 'emailが空では登録できない' do
      @user.email = ''
      @user.valid?
      expect(@user.errors.full_messages).to include "メールアドレスを入力してください"
    end
    it 'passwordが空だと登録できない' do
      @user.password = ''
      @user.valid?
      expect(@user.errors.full_messages).to include 'パスワードを入力してください'
    end
    it 'nameが11文字以上では登録できない' do
      @user.name = 'あいうえおあいうえおあ' 
      @user.valid?
      expect(@user.errors.full_messages).to include "ニックネームは10文字以内で入力してください"
    end
  end
end
