class CreateItems < ActiveRecord::Migration[5.2]
  def change
    create_table :items do |t|
      t.string :name
      t.string :description
      t.integer :unit_price
      t.integer :merchant_id
      t.string :status, default: "disabled"
      t.integer :status, default: 0

      t.timestamps
    end
  end
end
