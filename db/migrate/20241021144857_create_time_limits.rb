class CreateTimeLimits < ActiveRecord::Migration[7.2]
  def change
    create_table :time_limits do |t|
      t.string :time_period

      t.timestamps
    end
  end
end
