class ApplicationController < ActionController::Base
    def remote_ip
        if request.remote_ip == '127.0.0.1'
          # Hard coded remote address
          '149.7.104.174'
        else
          request.remote_ip
        end
    end
end
