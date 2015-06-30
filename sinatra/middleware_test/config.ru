MyApp = proc do |env|
  [200, {'Content-Type' => 'text/plain'}, ['ok']]
end

class MyMiddleWare
  def initialize(app)
    @app = app
  end

  def run(env)
    if env['PATH_INFO'] == '/'
      @app.call(env)
    else
      [404, {'Content-Type' => 'text/plain'}, ['not ok']]
    end
  end
end

# and the config
use MyMiddleWare
run MyApp
