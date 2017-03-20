class CreatePublicoClientes < ActiveRecord::Migration[5.0]
  def change
    create_table :publico_clientes do |t|
      t.string :nome
      t.text :descricao
      t.date :aniversario

      t.timestamps
    end
  end
end
