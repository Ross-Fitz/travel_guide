class CountryResource < JSONAPI::Resource
    attributes :name

    has_many :visas
end
