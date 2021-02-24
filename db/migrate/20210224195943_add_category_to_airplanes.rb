class AddCategoryToAirplanes < ActiveRecord::Migration[6.0]
  def change
    add_column :airplanes, :category, :string
    add_column :airplanes, :engines, :integer
  end
end
