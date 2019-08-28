App::Container.boot :models, namespace: true do |system|
  start do
    require "pathname"

    Dir[Rails.root.join("app/models/**/*.rb")].each do |model_path|
      model_name = Pathname(model_path)
        .relative_path_from(Rails.root.join("app/models")).to_s
        .then { |name| File.basename(name, File.extname(name)) }

      model = model_name.camelize.constantize

      if !model.abstract_class?
        register model_name.pluralize, model
      end
    end
  end
end
