class Mutations::CreateBusiness < GraphQL::Schema::Mutation
    null true
    argument :name, String, required: false, camelize: false
    argument :business_number, String, required: false, camelize: false

    def resolve(name:, business_number:)
        Entities::Business.create(name: name, business_number: business_number)
    end
end