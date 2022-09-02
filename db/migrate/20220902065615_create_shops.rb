class CreateShops < ActiveRecord::Migration[6.1]
  def change
    create_table :shops do |t|
      t.string :name
      t.integer :opening_date
      t.string :owner
    end
  end
end
