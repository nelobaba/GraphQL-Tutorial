class Types::ApplicantInputType < GraphQL::Schema::InputObject
    graphql_name "ApplicantInputType"
    description "All the attributes for creating an applicant"
  
    argument :id, ID, required: false
    argument :first_name, String, required: false, camelize: false
    argument :last_name, String, required: false, camelize: false
    argument :middle_name, String, required: false, camelize: false
end

class Types::ApplicantType < Types::BaseObject
    description "An Applicant"
  
    field :id, ID, null: false
    field :first_name, String, null: true
    field :last_name, String, null: true
    field :middle_name, String, null: true
end 