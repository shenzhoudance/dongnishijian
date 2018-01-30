class AddIsPaidToProduct < ActiveRecord::Migration[5.1]
  def change
    add_column :products, :is_paid, :boolean, default: false
  end
end
