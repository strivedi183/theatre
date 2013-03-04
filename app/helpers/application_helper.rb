module ApplicationHelper
  def intellinav
    links = ""
    links += "<li>#{link_to('Movies', movies_path)}</li>"
    links += "<li>#{link_to('Theaters', theaters_path)}</li>"
    if @auth.present?
      links += "<li>#{link_to('Logout ' + @auth.name, login_path, :method => :delete)}</li>"
    else
      links += "<li>#{link_to('Login', login_path)}</li>"
      links += "<li>#{link_to('Create User', new_user_path)}</li>"
    end
  end
end
