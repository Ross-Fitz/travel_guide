class ChecklistSerializer < ActiveModel::Serializer
  attributes :id, :apply_invite, :accept_invite, :passport, :id_document, :police_cert, :cv, :family_information, :biometrics, :acceptance_letter, :funds
end
