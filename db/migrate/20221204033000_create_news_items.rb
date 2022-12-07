class CreateNewsItems < ActiveRecord::Migration[7.0]
  def change
    create_table :news_items do |t|
      t.string :title
      t.string :content
      t.string :news_status
      t.string :comment_status
      t.references :author, null: false, foreign_key: { to_table: :users }
      t.references :category, null: false, foreign_key: true

      t.timestamps
    end
  end
end
