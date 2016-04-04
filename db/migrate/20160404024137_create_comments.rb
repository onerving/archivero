class CreateComments < ActiveRecord::Migration
  def change
    create_table :comments do |t|
      t.string :author_name
      t.string :email
      t.text :body
      t.references :document, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
