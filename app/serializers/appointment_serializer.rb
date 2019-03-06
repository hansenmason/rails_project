class AppointmentSerializer < ActiveModel::Serializer
  attributes :id, :date, :custom_att
  has_one :doctor
  has_one :patient

  def custom_att
    'suh'
  end
end
