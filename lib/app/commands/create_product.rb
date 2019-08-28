require "dry/monads"
require "dry/matcher/result_matcher"

module App
  module Commands
    class CreateProduct
      include Dry::Monads[:result]
      include Dry::Matcher::ResultMatcher.for(:call)

      include Import[
        "validation.product_contract",
        "product_repo",
      ]

      def call(params)
        validation = product_contract.(params)

        if validation.success?
          product = product_repo.create(validation.to_h)
          Success(product)
        else
          Failure(validation)
        end
      end
    end
  end
end
