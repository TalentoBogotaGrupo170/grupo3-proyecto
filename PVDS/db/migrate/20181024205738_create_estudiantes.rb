class CreateEstudiantes < ActiveRecord::Migration[5.2]
  def change
    create_table :estudiantes do |t|
      t.string :nombre
      t.integer :cedula
      t.integer :edad
      t.references :puntos, foreign_key: true
      t.references :poblacion, foreign_key: true

      t.timestamps
    end
  end
end
