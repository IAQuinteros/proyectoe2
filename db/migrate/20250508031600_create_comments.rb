class CreateComments < ActiveRecord::Migration[8.0]
  def change
    create_table :comments do |t|
      t.date :date_create
      t.string :content
      t.date :actualization_date
      t.references :user, null: false, foreign_key: true
      t.references :publication, null: false, foreign_key: true

      t.timestamps
    end
  end
end
