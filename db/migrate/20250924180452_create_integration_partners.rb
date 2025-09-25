class CreateIntegrationPartners < ActiveRecord::Migration[8.0]
  def change
    create_table :integration_partners do |t|
      t.string :type, null: false
      t.string :credentialId, null: false

      t.timestamps
    end
  end
end
