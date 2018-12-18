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
        ActiveRecord::Base.connection.disconnect!
      end
      raise e
    end
  end
end
