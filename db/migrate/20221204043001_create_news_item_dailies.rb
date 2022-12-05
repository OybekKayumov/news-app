class CreateNewsItemDailies < ActiveRecord::Migration[7.0]
  def change
    create_table :news_item_dailies do |t|
      t.references :news_item, null: false, foreign_key: true
      t.references :daily, null: false, foreign_key: true

      t.timestamps
    end
  end
end
