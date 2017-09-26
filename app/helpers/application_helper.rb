module ApplicationHelper
    def sample_helper 
        (content_tag :p do
            "The sample helper helps here."
        end) +
        content_tag(:p, " More helping over here as well.", class: "more-helping")
    end
    
    def current_user_helper
        if current_user.is_a?(GuestUser)
          (link_to "Register", new_user_registration_path) +
          '<br>'.html_safe +
          (link_to "Login", new_user_session_path)
        else
          link_to "Logout", destroy_user_session_path, method: :delete
        end
    end
    
    def source_helper(layout_name)
        if session[:source]
            greeting = "Thanks for visiting me from #{session[:source]} and you are on the #{layout_name} layout."
            content_tag(:p, greeting, class: "source-greeting")
        end
    end
    
    module HMarx
      class Renderer
        def self.copyright name, msg
          "&copy; #{Time.now.year} | <b>#{name}</b> #{msg}".html_safe
        end
      end
    end
    
    def set_copyright
        HMarx::Renderer.copyright 'Hayden Marx', 'All Rights Reserved.'
    end
end
