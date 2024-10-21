class CreateBusinessZones < ActiveRecord::Migration[7.2]
  def change
    create_table :business_zones do |t|
      t.string :zone_name

      t.timestamps
    end
  end
end
