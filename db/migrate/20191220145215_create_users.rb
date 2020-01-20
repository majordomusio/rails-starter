class CreateUsers < ActiveRecord::Migration[6.0]
  def change
    create_table :users do |t|
      t.string :name, null: false
      t.integer :role
      # internal metadata
      t.timestamps null: false
    end
  end
end
