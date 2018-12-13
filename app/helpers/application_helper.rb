module ApplicationHelper
  def experiences_show?
    action_name == 'show' && controller_name == 'experiences'
  end

  def sessions_new?
    action_name == 'new' && controller_name == 'sessions'
  end

  def registrations_new?
    action_name == 'new' && controller_name == 'registrations'
  end
end
