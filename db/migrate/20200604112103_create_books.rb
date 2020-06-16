class CreateBooks < ActiveRecord::Migration[6.0]
  def change
    create_table :books do |t|
      t.string :name
      t.string :city
      t.string :location
      t.text :description
      t.string :cat1
      t.string :cat2
      t.string :subcat
      t.string :price
      t.string :mobile
      t.string :email

      t.timestamps
    end
  end
end
