class CreateAdministradors < ActiveRecord::Migration[5.2]
  def change
    create_table :administradors do |t|
      t.string :nombre
      t.integer :cedula
      t.references :puntos, foreign_key: true

      t.timestamps
    end
  end
end
