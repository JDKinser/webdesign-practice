helpers do
  def current_user
    @current_user ||= Wizard.find_by(id: session[:wizard_id])
  end

  def logged_in?
    current_user ? true : false
  end
end
