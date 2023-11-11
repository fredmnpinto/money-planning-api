class CreateExpenses < ActiveRecord::Migration[7.0]
  def change
    create_table :expenses do |t|
      t.integer :amount
      t.text :name
      t.text :description
      t.datetime :expensed_at
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
