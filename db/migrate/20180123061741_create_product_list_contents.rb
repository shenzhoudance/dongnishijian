class CreateProductListContents < ActiveRecord::Migration[5.1]
  def change
    create_table :product_list_contents do |t|
      t.string :title
      t.text :description

      t.timestamps
    end
  end
end
