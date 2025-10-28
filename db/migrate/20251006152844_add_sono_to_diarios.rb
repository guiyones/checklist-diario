class AddSonoToDiarios < ActiveRecord::Migration[8.0]
  def change
    add_column :diarios, :sono, :boolean
  end
end
