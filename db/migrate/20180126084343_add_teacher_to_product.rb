class AddTeacherToProduct < ActiveRecord::Migration[5.1]
  def change
    add_column :products, :teacher, :string
  end
end
