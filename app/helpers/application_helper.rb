module ApplicationHelper
	def sortable(column, title=nil)
	  title ||= column.titleize
	  direction = params[:direction] == "asc" ? "desc" : "asc"
	  css_class = "arrow #{direction}"
	  link_to title, {:order_by => column, :direction => direction}, {:class => css_class}
	end
end
