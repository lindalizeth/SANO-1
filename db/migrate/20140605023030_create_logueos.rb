class CreateLogueos < ActiveRecord::Migration
  def change
    create_table :logueos do |t|
      t.string :usuario
      t.string :clave

      t.timestamps
    end
  end
end
