# Template management
def get_center(template) # Responsive main method (12 units)
  col = 12 # Main div, for all the width
  col -= 3 unless template['right'].nil? # has right div
  col -= 3 unless template['left'].nil?  # has left div
  "col-sm-#{col}" # return total units
end

# Helper used in template.erb to load partial (:param)
def load_partial(position)
  partial = position.gsub(':param', params[:param].to_s)
  erb :"#{partial}"
end
