class AddSpeedToAirplanes < ActiveRecord::Migration[6.0]
  def change
    add_column :airplanes, :speed, :integer, default: 100
    add_column :airplanes, :maker, :string
    remove_column :airplanes, :crew
  end
end
