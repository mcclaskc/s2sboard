module ApplicationHelper
	def sortable(column, title=nil)
	  title ||= column.titleize
	  direction = params[:direction] == "asc" ? "desc" : "asc"
	  arrow = params[:order_by] == column ? "icon-circle-arrow-#{direction == 'asc' ? 'up' : 'down'}" : nil
	  link_to raw(title+" <i class=\"#{arrow}\"></i>") , {:order_by => column, :direction => direction}#, {:class => css_class}
	end
end
