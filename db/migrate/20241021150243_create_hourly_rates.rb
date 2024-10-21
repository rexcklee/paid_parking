class CreateHourlyRates < ActiveRecord::Migration[7.2]
  def change
    create_table :hourly_rates do |t|
      t.string :rate

      t.timestamps
    end
  end
end
