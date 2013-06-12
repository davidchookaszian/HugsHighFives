class SizesNeedProducts < ActiveRecord::Migration
  def change
    add_column :sizes, :products_id, :string
  end
end
