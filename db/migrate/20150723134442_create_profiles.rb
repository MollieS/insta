class CreateProfiles < ActiveRecord::Migration
  def change
    create_table :profiles do |t|
      t.string :name
      t.string :username
      t.string :location
      t.text :bio

      t.timestamps null: false
    end
  end
end
