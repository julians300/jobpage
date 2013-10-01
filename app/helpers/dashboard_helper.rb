module DashboardHelper
	def dashbrand
		current_user.company_name || 'Jobbster'
	end

	def frontlink
		if :subdomain
			root_url(subdomain: current_user.subdomain)
		else
			dashboard_path
		end
	end
end
