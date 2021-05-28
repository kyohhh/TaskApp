FactoryBot.define do
  factory :card do
    card_title { 'タイトル' }
    memo       { 'メモ' }
    list_id    { 1 }
  end
end
