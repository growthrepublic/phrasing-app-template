module PhrasingHelper
  def can_edit_phrases?
    session[:admin] == true
  end
end
