class Login < SitePrism::Page
  set_url '/en-GB/login/'

  element :email, "#email"
  element :password, "#password"
  element :signin_button, ".smart-submit-button"

end