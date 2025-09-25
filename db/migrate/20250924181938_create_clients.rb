class CreateClients < ActiveRecord::Migration[8.0]
  def change
    create_table :clients do |t|
      t.string :orgId, null: false
      t.string :clientId, null: false
      t.string :name, null: false
      t.string :imgUrl, null: false

      t.timestamps
    end
  end
end
