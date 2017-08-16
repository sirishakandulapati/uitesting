class UtilityBar < SitePrism::Section

  element :sign_out_button, ".utility-header--logout-button"

  def has_signout_button
    has_sign_out_button?
  end

end