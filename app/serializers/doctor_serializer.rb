class DoctorSerializer < ActiveModel::Serializer
  attributes :id, :first_name, :last_name, :zip_code, :specialty, :created_at, :updated_at
end
