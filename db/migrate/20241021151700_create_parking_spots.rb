class CreateParkingSpots < ActiveRecord::Migration[7.2]
  def change
    create_table :parking_spots do |t|
      t.string :block_number
      t.references :time_limit, null: false, foreign_key: true
      t.references :street, null: false, foreign_key: true
      t.string :payment_time
      t.integer :total_space
      t.references :hourly_rate, null: false, foreign_key: true
      t.integer :mobile_payment_number
      t.references :business_zone, null: false, foreign_key: true

      t.timestamps
    end
  end
end
