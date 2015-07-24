class CreateFollowers < ActiveRecord::Migration
  def change
    create_table :followers do |t|
      t.belongs_to :profile, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
