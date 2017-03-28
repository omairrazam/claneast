module ApplicationHelper
	def nav_link_class(link_path)
	  class_name = current_page?(link_path) ? 'active' : ''
	end
end
