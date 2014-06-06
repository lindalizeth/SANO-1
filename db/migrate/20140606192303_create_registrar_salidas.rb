class CreateRegistrarSalidas < ActiveRecord::Migration
  def change
    create_table :registrar_salidas do |t|
      t.date :Selccione_fecha
      t.string :lugarSalida
      t.string :FuncionarioACargo
      t.integer :fichaGrupo
      t.boolean :tipoSalida_pedagogico
      t.boolean :Recreativo
      t.boolean :Otro
      t.string :digacual

      t.timestamps
    end
  end
end
