class CreateDeliveryContents < ActiveRecord::Migration
  def change
    create_table :delivery_contents do |t|
      t.references :group, index: true, foreign_key: true
      t.references :medium, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end