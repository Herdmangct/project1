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

end
