class CreatePuntos < ActiveRecord::Migration[5.2]
  def change
    create_table :puntos do |t|
      t.string :nombre

      t.timestamps
    end
  end
end
