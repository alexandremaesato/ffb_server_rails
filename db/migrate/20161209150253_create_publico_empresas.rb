class CreatePublicoEmpresas < ActiveRecord::Migration[5.0]
  def change
    create_table :publico_empresas do |t|
      t.string :nome
      t.text :descricao

      t.timestamps
    end
  end
end
