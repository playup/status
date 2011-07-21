module Status
  class Engine < ::Rails::Engine
    config.app_middleware.use Middleware
  end
end