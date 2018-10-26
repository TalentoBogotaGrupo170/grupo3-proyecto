class CreateCursos < ActiveRecord::Migration[5.2]
  def change
    create_table :cursos do |t|
      t.string :nombre
      t.references :punto, foreign_key: true

      t.timestamps
    end
  end
end
