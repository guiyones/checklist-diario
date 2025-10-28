class CreateDiarios < ActiveRecord::Migration[8.0]
  def change
    create_table :diarios do |t|
      t.date :data
      t.string :dia_semana
      t.boolean :exercicio
      t.boolean :leitura
      t.boolean :alimentacao
      t.boolean :alcool
      t.boolean :estudo
      t.integer :pontos

      t.timestamps
    end
  end
end
