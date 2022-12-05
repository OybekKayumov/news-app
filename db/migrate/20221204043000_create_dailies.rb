class CreateDailies < ActiveRecord::Migration[7.0]
  def change
    create_table :dailies do |t|
      t.datetime :posted_date

      t.timestamps
    end
  end
end