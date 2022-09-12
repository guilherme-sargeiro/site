class CreateRegisters < ActiveRecord::Migration[7.0]
  def change
    create_table :registers do |t|
      t.integer :id_user
      t.string :nome
      t.string :email
      t.string :senha

      t.timestamps
    end
  end
end
