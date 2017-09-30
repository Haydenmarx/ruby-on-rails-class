module ApplicationHelper
    def current_user_helper style = ''
        if current_user.is_a?(GuestUser)
          (link_to "Register", new_user_registration_path, class: style) +

          (link_to "Login", new_user_session_path, class: style)
        else
          link_to "Logout", destroy_user_session_path, method: :delete, class: style
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
