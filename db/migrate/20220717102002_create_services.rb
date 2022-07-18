class CreateServices < ActiveRecord::Migration[6.1]
  def change
    create_table :services do |t|
      t.string :name
      t.belongs_to :category, null: false, foreign_key: true
      t.belongs_to :performer, null: false, foreign_key: true

      t.timestamps
    end
  end
end
