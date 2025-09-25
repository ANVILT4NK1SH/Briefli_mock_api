class IntegrationPartner < ApplicationRecord
  self.inheritance_column = nil
  has_many :client_integrationpartners, dependent: :destroy
  has_many :clients, through: :client_integrationpartners

  validates :type, :credentialId, presence: true
end
