class CreateCrewMembers < ActiveRecord::Migration[6.0]
  def change
    create_table :crew_members do |t|
      t.string :name
      t.string :position
      t.references :airplane, null: false, foreign_key: true

      t.timestamps
    end
  end
end
