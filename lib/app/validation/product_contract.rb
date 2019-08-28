require "dry/validation"

module App
  module Validation
    class ProductContract < Dry::Validation::Contract
      json do
        required(:name).filled(:string)
      end
    end
  end
end
