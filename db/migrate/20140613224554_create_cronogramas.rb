class CreateCronogramas < ActiveRecord::Migration
  def change
    create_table :cronogramas do |t|
      t.date :seleccione_fecha
      t.string :lugar_salida
      t.references :funcionarios, index: true
      t.string :ficha_grupo
      t.references :tipo_salida, index: true
      t.references :programa_formacion, index: true

      t.timestamps
    end
  end
end
