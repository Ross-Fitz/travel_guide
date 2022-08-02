class VisaResource < JSONAPI::Resource
    attributes :name

    has_many :visas
end
