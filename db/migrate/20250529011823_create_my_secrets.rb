class CreateMySecrets < ActiveRecord::Migration[7.2]
  def change
    create_table :my_secrets do |t|
      t.string :title
      t.text :description
      t.string :username
      t.string :password
      t.string :url
      t.integer :category
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
