class Types::BusinessInputType < GraphQL::Schema::InputObject
    graphql_name "BusinessInputType"
    description "All the attributes for creating a business"
  
    argument :id, ID, required: false
    argument :name, String, required: false, camelize: false
    argument :business_number, String, required: false, camelize: false
end


class Types::BusinessType < Types::BaseObject
    description "A Business"
  
    field :id, ID, null: false
    field :name, String, null: true
    field :business_number, String, null: true
end 