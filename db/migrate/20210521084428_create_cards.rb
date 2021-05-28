class CreateCards < ActiveRecord::Migration[6.0]
  def change
    create_table :cards do |t|
      
      t.string      :card_title, null: false, limit: 255
      t.text        :memo,       limit: 1000
      t.references  :list,       foreign_key: true, null: false

      t.timestamps
    end
  end
end
