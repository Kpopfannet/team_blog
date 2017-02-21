module ApplicationHelper
    
    def current_user
        session[:user] ? Member.find(session[:user]["id"]) : nil
    end
    
    def user_signed_in?
        current_user ? true : false
    end
    
    def is_admin?
        admin = []
        
        #
        # => 관리자 권한 스위치
            # admin << "함상빈"
            admin << "김용현"
            # admin << "송서하"
            # admin << "장종현"
            # admin << "서재은"
        
        result = false
        if user_signed_in?
            result = (admin.include?(current_user&.name) ? true : false)
        end
        return result
    end
end
