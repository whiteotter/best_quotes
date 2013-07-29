require 'rulers'
$LOAD_PATH << File.join(File.dirname(__FILE__), "..", "app", "controllers")
require 'quotes_controller'

module BestQuotes
  class Application < Rulers::Application
    def call(env)
      if env['PATH_INFO'] == '/'
        # env['PATH_INFO'] = '/quotes/a_quote'
        return [307, {'Content-Type' => 'text/html', 'Location' => 'quotes/a_quote'}, []]
      end
      super
    end
  end
end