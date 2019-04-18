class ApplicationController < ActionController::Base

    def after_sign_out_path_for(resource_or_scope)
        new_user_session_path
    end


    def after_sign_in_path_for(resource_or_scope)
        if current_user.user_role == 'Admin'
            dashboard_index_path
        else
            home_index_path
        end
    end
end
