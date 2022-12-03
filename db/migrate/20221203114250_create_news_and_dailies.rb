class CreateNewsAndDailies < ActiveRecord::Migration[7.0]
  def change
    create_table :news_dailies do |t|
      t.belongs_to :news
      t.belongs_to :daily

      t.timestamps
    end
  end
end


