module ExceptionLogger
  class Engine < ::Rails::Engine
    isolate_namespace ExceptionLogger
    config.generators do |g|
      g.templates.unshift File::expand_path("../templates", __FILE__)
    end

    initializer :append_migrations do |app|
      unless app.root.to_s.match root.to_s
        config.paths["db/migrate"].expanded.each do |expanded_path|
          app.config.paths["db/migrate"] << expanded_path
        end
      end
    end
  end
end
