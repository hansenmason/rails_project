class PatientSerializer < ActiveModel::Serializer
  attributes :id, :first_name, :last_name, :diagnosis, :born_on, :primary_care_physician
end
