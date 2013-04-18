class AccountSerializer < ActiveModel::Serializer
  attributes :id, :first_name, :last_name, :username, :email, :city, :state,
             :birthday
end
