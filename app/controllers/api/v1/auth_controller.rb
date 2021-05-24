class Api::V1::AuthController < ApplicationController
    skip_before_action :authorized, only: [:login]

    def login 
        # search for a user 
        user = User.find_by(email: auth_param[:name])
            # if user and password matches 
            if user && user.authenticate(auth_param[:password])
            #  send back a token
                render json: {username: user.name, token: JWT.encode({user_id: user.id}, "my_s3cr3t")}
            else 
                # send an error
                render json: {error: "Incorrect email or password"}, status: :unauthorized
            end
        end
    
        # strong params
        def auth_param
            params.require(:auth).permit(:name, :password)
        end
end
