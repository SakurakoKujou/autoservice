class CreateOrders < ActiveRecord::Migration[6.1]
  def change
    create_table :orders do |t|
      t.string :nameOrder
      t.belongs_to :service, null: false, foreign_key: true

      t.timestamps
    end
  end
end
