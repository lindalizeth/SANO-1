class CreateFuncionarios < ActiveRecord::Migration
  def change
    create_table :funcionarios do |t|
      t.string :nombres
      t.string :apellidos
      t.string :indentificacion
      t.string :telefono
      t.string :mail
      t.string :codigo
      t.string :EPS
      t.string :IPS
      t.references :centro, index: true
      t.references :tipodoc, index: true

      t.timestamps
    end
  end
end
