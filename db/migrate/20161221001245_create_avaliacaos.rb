class CreateAvaliacaos < ActiveRecord::Migration[5.0]
  def change
    create_table :avaliacaos do |t|
      t.integer :avaliado_id
      t.integer :tipo_avaliado
      t.text :comentario
      t.integer :cliente_id

      t.timestamps
    end
  end
end
