class AddDetailToProduct < ActiveRecord::Migration[5.1]
  def change
    add_column :products, :detail, :text
  end
end
