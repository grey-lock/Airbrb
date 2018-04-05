class UserSerializer < ActiveModel::Serializer
  attributes :id, :email, :username, :session_token, :password_digest, :firstname, :lastname, :img_url
end
