class CreateDailies < ActiveRecord::Migration[7.0]
  def change
    create_table :dailies do |t|
      t.references :editor, null: false, foreign_key: { to_table: :users}
      t.references :news_item, null: false, foreign_key: true

      t.timestamps
    end
  end
end