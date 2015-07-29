module AdminsHelper
		def log_in(admin)
		session[:admin_id] = admin.id
	end

		def log_out
		forget(current_user)
		session.delete(:user_id)
		@current_user = nil
	end

end
