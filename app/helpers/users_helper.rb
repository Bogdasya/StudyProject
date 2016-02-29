module UsersHelper

  def full_name(user)
    ("#{user.first_name} #{user.last_name}".present?)? "#{user.first_name} #{user.last_name}": "You have not first name and last name, please enter them"
  end
end
