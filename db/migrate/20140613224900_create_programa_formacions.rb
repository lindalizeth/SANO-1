class CreateProgramaFormacions < ActiveRecord::Migration
  def change
    create_table :programa_formacions do |t|
      t.string :nombre

      t.timestamps
    end
  end
end
