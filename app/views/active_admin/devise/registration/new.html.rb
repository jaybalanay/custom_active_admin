<div id="login">
  <h2><%= title "#{active_admin_application.site_title} Login" %></h2>

  <% scope = Devise::Mapping.find_scope!(resource_name) %>
	<%= "#{scope} | #{resource_name}" %>
  <%= active_admin_form_for(resource, :as => resource_name, :url => send(:"#{scope}_session_path"), :html => { :id => "session_new" }) do |f| 
    f.inputs do
      f.input :email
      f.input :password
      f.input :password_confirmation
    end
    f.buttons do
      f.commit_button "SignUp"
    end
  end
  %>

  <%= render :partial => "devise/shared/links" %>
</div>