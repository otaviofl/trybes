module ApplicationHelper
  def experiences_show?
    action_name == 'show' && controller_name == 'experiences'
  end
end
