class Client < ApplicationRecord
  has_many :client_integrationpartners, dependent: :destroy
  has_many :integration_partners, through: :client_integrationpartners
  accepts_nested_attributes_for :client_integrationpartners, allow_destroy: true

  validates :orgId, :clientId, :name, :imgUrl, presence: true
  validates :clientId, uniqueness: true
end
