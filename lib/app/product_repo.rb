module App
  class ProductRepo
    include Import["models.products"]

    def create(attrs)
      products.create(attrs)
    end

    def all
      products.all
    end
  end
end
