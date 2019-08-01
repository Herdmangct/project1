module ApplicationHelper
  def current_class?(test_path)
    if request.path == test_path
      return 'active'
    else
      return ''
    end
  end
end
