class Mutations::CreateApplicant < GraphQL::Schema::Mutation
    null true
    argument :first_name, String, required: false, camelize: false
    argument :last_name, String, required: false, camelize: false
    argument :middle_name, String, required: false, camelize: false

    def resolve(first_name:, last_name:, :middle_name)
        Individual::Applicant.create(first_name: first_name, middle_name: middle_name, last_name: last_name)
    end
end