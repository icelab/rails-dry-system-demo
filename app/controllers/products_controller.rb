class ProductsController < ApplicationController
  def index
    resolve "queries.list_products" do |list|
      list.(params.to_unsafe_h) do |m|
        m.success do |json|
          render json: json
        end

        m.failure do
          raise "Unexpected"
        end
      end
    end
  end

  def create
    respond_to do |format|
      format.json do
        resolve "commands.create_product" do |create|
          create.(params.to_unsafe_h) do |m|
            m.success do |json|
              render json: json
            end

            m.failure do |validation|
              render json: validation.errors.to_h
            end
          end
        end
      end
    end
  end
end
