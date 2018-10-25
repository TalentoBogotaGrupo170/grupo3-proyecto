class CreatePoblacions < ActiveRecord::Migration[5.2]
  def change
    create_table :poblacions do |t|
      t.string :nombre

      t.timestamps
    end
  end
end
