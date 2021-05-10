class ApplicationController < ActionController::Base
    def authenticate
        token = request.headers["Authorization"].split.last
        payload = JWT.decode(token, "mysecret", true, { algorithm: 'HS256'})
        @current_user = User.find_by(id:  payload["user_id"])
    rescue
        render json: {errors: ["Not Authorized"]}, status: :unauthorized
    end
end
