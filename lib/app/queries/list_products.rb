require "dry/monads"
require "dry/matcher/result_matcher"

module App
  module Queries
    class ListProducts
      include Dry::Monads[:result]
      include Dry::Matcher::ResultMatcher.for(:call)

      include Import["product_repo"]

      def call(params)
        # Might want to use some kind of serializer here
        Success(product_repo.all.as_json)
      end
    end
  end
end
