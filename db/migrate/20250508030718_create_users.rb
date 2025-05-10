class CreateUsers < ActiveRecord::Migration[8.0]
  def change
    create_table :users do |t|
      t.string :name
      t.string :password
      t.string :mail
      t.string :username
      t.string :sex
      t.date :date_create
      t.string :user_image

      t.timestamps
    end
  end
end
