module DashboardHelper
	def top_right_menu
		if vendor_signed_in?
			content_tag(:li, (link_to "Logout", destroy_vendor_session_path, method: :delete))
		elsif evaluator_signed_in?
			content_tag(:li, (link_to "Logout", destroy_evaluator_session_path, method: :delete))
		else
			html = content_tag(:li, (link_to "Vendor Sign in", new_vendor_session_path))
			html+= content_tag(:li, (link_to "Evaluator Sign in", new_evaluator_session_path))

		end
	end
end
