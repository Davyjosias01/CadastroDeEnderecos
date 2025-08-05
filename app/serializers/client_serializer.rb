class ClientSerializer < ActiveModel::Serializer
  attributes :id, :name, :email
  
  has_many :addresses
end
