module Types
  class QueryType < Types::BaseObject
    # Add root-level fields here.
    # They will be entry points for queries on your schema.

    # TODO: remove me
    field :test_field, String, null: false,
      description: "An example field added by the generator"
    def test_field
      "Hello World!"
    end

    field :businesses, [Types::BusinessType], null: false

    def businesses
      Entities::Business.all
    end

    field :applicants, [Types::ApplicantType], null: false
    def applicants
      Individual::Applicant.all
    end
  end
end
