class CreateMissions < ActiveRecord::Migration[5.0]
  def change
    create_table :missions do |t|
      t.string :description
      t.references :planet, foreign_key: true
      t.references :spaceshift, foreign_key: true

      t.timestamps
    end
  end
end
