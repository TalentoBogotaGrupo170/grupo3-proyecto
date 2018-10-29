class CreateUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :users do |t|
      t.string :nombre
      t.integer :cedula
      t.integer :edad
      t.references :point, foreign_key: true
      t.references :course, foreign_key: true
      t.references :poblation, foreign_key: true

      t.timestamps
    end
  end
end
