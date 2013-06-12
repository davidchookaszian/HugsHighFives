class CreateProducts < ActiveRecord::Migration
  def change
    create_table :products do |t|
      t.string :title
      t.string :description
      t.string :detail
      t.float :price

      t.timestamps
    end
  end
end
