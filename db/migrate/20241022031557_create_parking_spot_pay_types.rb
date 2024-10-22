class CreateParkingSpotPayTypes < ActiveRecord::Migration[7.2]
  def change
    create_table :parking_spot_pay_types do |t|
      t.references :parking_spot, null: false, foreign_key: true
      t.references :pay_type, null: false, foreign_key: true

      t.timestamps
    end
  end
end
