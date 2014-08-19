module ApplicationHelper
  def sortable(column, link_text)
    direction = column == params[:sort] && params[:direction] == 'asc' ? 'desc' : 'asc'
    link_to link_text, sort: column, direction: direction
  end
end
