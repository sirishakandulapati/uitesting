class Home < SitePrism::Page
  set_url '/'

  element :signin_button, ".signin-register--signin-button a"
  element :sign_out_button, "#nav-signout-button"
  element :left_hand_navigation_button, ".icon-burger_menu_icon.pull-left"

  def has_signout_button
    left_hand_navigation_button.click
    wait_for_sign_out_button(5)
    has_sign_out_button?
  end

end

