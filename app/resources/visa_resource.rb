class VisaResource < JSONAPI::Resource
    attributes :name, :information

    has_one :country
end
