class CreateBooks < ActiveRecord::Migration[5.0]
  def change
    create_table :books do |t|

      t.string :author
      t.string :categories
      t.datetime :lastCheckedOut
      t.string :lastCheckedOutBy
      t.string :publisher
      t.text :title
      t.text :url

      t.timestamps null: false
    end
  end
end
