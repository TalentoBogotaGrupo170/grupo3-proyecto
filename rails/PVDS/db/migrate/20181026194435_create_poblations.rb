class CreatePoblations < ActiveRecord::Migration[5.2]
  def change
    create_table :poblations do |t|
      t.string :nombre

      t.timestamps
    end
  end
end
