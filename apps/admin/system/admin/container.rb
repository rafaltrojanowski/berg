module Admin
  class Container < Dry::Web::Container
    require root.join("system/berg/container")
    import Berg::Container

    configure do |config|
      config.name = :admin
      config.default_namespace = "admin"

      config.root = Pathname(__FILE__).join("../..").realpath.dirname.freeze

      config.auto_register = %w[
        lib/admin
      ]
    end

    load_paths! "lib", "system"
  end
end
