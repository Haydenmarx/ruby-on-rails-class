module ApplicationHelper
    def sample_helper 
        (content_tag :p do
            "The sample helper helps here."
        end) +
        content_tag(:p, " More helping over here as well.", class: "more-helping")
    end
    
    def current_user_helper
        if current_user.is_a?(User)
          link_to "Logout", destroy_user_session_path, method: :delete
        else
          (link_to "Register", new_user_registration_path) +
          '<br>'.html_safe +
          (link_to "Login", new_user_session_path)
        end
    end
    
    def source_helper(layout_name)
        if session[:source]
            greeting = "Thanks for visiting me from #{session[:source]} and you are on the #{layout_name} layout."
            content_tag(:p, greeting, class: "source-greeting")
        end
    end
    
end
