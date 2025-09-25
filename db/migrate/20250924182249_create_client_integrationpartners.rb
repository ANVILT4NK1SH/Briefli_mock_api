class CreateClientIntegrationpartners < ActiveRecord::Migration[8.0]
  def change
    create_table :client_integrationpartners do |t|
      t.references :client, null: false, foreign_key: true
      t.references :integration_partner, null: false, foreign_key: true

      t.timestamps
    end

    add_index :client_integrationpartners, [ :client_Id, :integration_partner_id ], unique: true
  end
end
