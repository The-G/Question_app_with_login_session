class UserController < ApplicationController
    
    def sign_up
    end
    
    def sign_up_action
        email = params[:email]
        name = params[:name]
        password = params[:password]
        User.create(
            email:email,
            name:name,
            password:password
        )
        
        redirect_to '/'
    end
    
    def login

    end
    
    def login_action
        email = params[:email]
        password = params[:password]
    
        user = User.find_by(email: email)
        if user
            if user.password == password
                session[:user_id] = user.id
                redirect_to '/'
            else
                @message = "wrong password"    
            end
        else
            @message = "please check your email or Sign_up first"    
        end
    end
    
    def logout
        session.clear
        redirect_to :back
    end
    

end
