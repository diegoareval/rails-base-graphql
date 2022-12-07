module Types
  class QueryType < Types::BaseObject

    field :user, UserType, null: true do
      description "fetch user by id"
      argument :id, ID, required: true
      argument :cached, Boolean, required: false, default_value: true
    end

    field :rockets, resolver: Queries::FetchRockets


    def user(id:, cached:)
      User::Cache.new('arron', 'arrontaylor')
    end

  end
end
