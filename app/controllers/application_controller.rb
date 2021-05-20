class ApplicationController < ActionController::API

    def logged_in?
        # grab headers
        headers= request.headers["Authorization"]
        # token in headers
        token = headers.split(" ")[1]
        # grab id in token 
        user_id = JWT.decode(token, "LordStrings")[0]["user_id"]
        user = User.find(user_id)
        if user 
            user
        else
            user = nil
        end
        render json:{error: "Please log in"} unless user 
    end
end
