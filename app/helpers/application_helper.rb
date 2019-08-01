module ApplicationHelper

  def current_class?(test_path)
    if request.path == test_path
      if test_path == root_path
        return "white"
      else
        return 'active'
      end
    else
      return ''
    end
  end

  def display_standard_table(columns, collection = {})

   thead = content_tag :thead do
     content_tag :tr do
      columns.collect {|column|  concat content_tag(:th,column[:display_name])}.join().html_safe
     end
   end

   tbody = content_tag :tbody do
    collection.collect { |elem|
      content_tag :tr do
        columns.collect { |column|
            content_tag :td do
              if column[:display_name] == "Meal"
                concat link_to(elem.attributes[column[:name]], elem)
              elsif column[:display_name] == "Sales Price" || column[:display_name] == "Cost to Make"
                concat content_tag(:div, number_to_currency(elem.attributes[column[:name]]))
              else
                concat content_tag(:div, elem.attributes[column[:name]])
              end
            end

        }.to_s.html_safe
      end
    }.join().html_safe
   end

   content_tag :table, thead.concat(tbody), :class => "table table-striped"

  end

end
