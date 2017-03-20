class CreateFavoritos < ActiveRecord::Migration[5.0]
  def change
    create_table :favoritos do |t|
      t.integer :cliente_id
      t.integer :favoritado_id
      t.integer :tipo_favoritado
      t.boolean :checked

      t.timestamps
    end
  end
end
