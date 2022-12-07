module Queries
    class FetchRockets < Queries::BaseQuery
  
      type [Types::RocketType], null: false
  
      def resolve
        WebServices::HTTP::Space_X.fetch_rockets
      end
    end
  end