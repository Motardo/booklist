class CreateBooks < ActiveRecord::Migration
  def change
    create_table :books do |t|
      t.string :title
      t.text :description
      t.integer :year_published
      t.datetime :read_date
      t.string :auth
      t.references :author, index: true

      t.timestamps
    end
  end
end
