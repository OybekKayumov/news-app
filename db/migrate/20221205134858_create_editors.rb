class CreateEditors < ActiveRecord::Migration[7.0]
  def change
    create_table :editors do |t|
      t.datetime :posted_date

      t.timestamps
    end
  end
end
