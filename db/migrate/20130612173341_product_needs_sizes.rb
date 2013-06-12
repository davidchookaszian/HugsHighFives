class ProductNeedsSizes < ActiveRecord::Migration
  def change
    add_column :products, :size_id, :string
  end

end
