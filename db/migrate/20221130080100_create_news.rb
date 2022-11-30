class CreateNews < ActiveRecord::Migration[7.0]
  def change
    create_table :news do |t|
      t.string :title
      t.text :content
      t.datetime :posted_date
      t.string :news_status
      t.string :comment_status
      t.references :author, null: false, foreign_key: { to_table: :users }
      t.references :categories, null: false, foreign_key: true

      t.timestamps
    end
  end
end
