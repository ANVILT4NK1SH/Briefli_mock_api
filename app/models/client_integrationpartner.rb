class ClientIntegrationpartner < ApplicationRecord
  belongs_to :client
  belongs_to :integration_partner
end
