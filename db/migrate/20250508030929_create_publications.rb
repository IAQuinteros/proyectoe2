class CreatePublications < ActiveRecord::Migration[8.0]
  def change
    create_table :publications do |t|
      t.string :publication_image
      t.string :description
      t.date :data_create
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
