class CreateCards < ActiveRecord::Migration[6.0]
  def change
    create_table :cards do |t|
      t.string     :card_token,     null: false
      t.string     :customer_token, null: false
      t.references :parent_user,    null: false, foreign_key: true, type: :bigint
      t.timestamps
    end
  end
end
