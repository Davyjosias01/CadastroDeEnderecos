class AddressSerializer < ActiveModel::Serializer
  attributes :id, :street, :number, :city, :state, :zip 
end
