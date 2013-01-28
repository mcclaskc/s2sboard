module ApplicationHelper
	def sortable(column, title=nil)
	  title ||= column.titleize
	  direction = params[:direction] == "asc" ? "desc" : "asc"
	  css_class = params[:order_by] == column ? "arrow #{direction}" : nil
	  link_to title, {:order_by => column, :direction => direction}, {:class => css_class}
	end
end
