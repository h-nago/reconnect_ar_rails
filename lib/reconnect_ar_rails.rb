require "reconnect_ar_rails/version"

module ReconnectArRails
  class Disconnector
    def initialize app
      @app = app
    end
    def call env
      @app.call(env)
    rescue => e
      if e.message.match(/--read-only/)
        ActiveRecord::Base.clear_all_connections!
      end
      raise e
    end
  end
end
