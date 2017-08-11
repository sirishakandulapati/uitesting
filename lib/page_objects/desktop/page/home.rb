class Home < SitePrism::Page
  set_url '/'

  element :signin_button, ".signin-register--signin-button a"
  element :sign_out_button, ".utility-header--logout-button"

  def has_signout_button
    has_sign_out_button?
  end


end

