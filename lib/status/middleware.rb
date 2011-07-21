module Status
  class Middleware
    def initialize(app)
      @app = app
    end

    def call(env)
      if env['PATH_INFO'] == '/status'
        [200, { 'Content-Type' => 'application/json' }, ['{"status": "OK"}']]
      else
        @app.call(env)
      end
    end
  end
end