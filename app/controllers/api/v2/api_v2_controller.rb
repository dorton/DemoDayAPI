module Api
  module V2
    class ApiV2Controller < ActionController::Base
      protect_from_forgery with: :null_session
    end
  end
end
