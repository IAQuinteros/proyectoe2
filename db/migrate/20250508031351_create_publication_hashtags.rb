class CreatePublicationHashtags < ActiveRecord::Migration[8.0]
  def change
    create_table :publication_hashtags do |t|
      t.references :publication, null: false, foreign_key: true
      t.references :hashtag, null: false, foreign_key: true

      t.timestamps
    end
  end
end
