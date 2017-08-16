['login','home'].each do |page_name|
  define_method(page_name) {page_name.capitalize.constantize.new}
end



# def home
#   @home ||= Base::Home.new
# end
#
# def login
#   @login ||= Base::Login.new
# end

