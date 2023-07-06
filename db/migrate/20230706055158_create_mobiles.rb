class CreateMobiles < ActiveRecord::Migration[7.0]
  def change
    create_table :mobiles do |t|
      t.references :friend, null: false, foreign_key: true
      t.string :model
      t.string :processor
      t.string :ram
      t.string :rom

      t.timestamps
    end
  end
end
