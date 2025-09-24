class OrgController < ApplicationController
  def getClients
      clients = Client.all.includes(client_integrationpartners: :integration_partner)

      formatted_clients = clients.map do |client|
        {
          orgId: client.orgId,
          clientId: client.clientId,
          name: client.name,
          imgUrl: client.imgUrl,
          integrationPartners: client.client_integrationpartners.map do |cip|
            {
              type: cip.integration_partner.type,
              credentialId: cip.integration_partner.credentialId
            }
          end
        }
    end
    render json: formatted_clients, status: :ok
  end
end
