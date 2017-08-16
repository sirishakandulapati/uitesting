module User
  class << self
    attr_accessor :usr_yml
  end

  self.usr_yml ||= load_user_yml('users.yml')


  def self.get_email
    usr_yml['ppe']['poland']['email']
  end

  def self.get_password
    usr_yml['ppe']['poland']['password']
  end


end

World(User)


