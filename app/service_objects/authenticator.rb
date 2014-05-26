class Authenticator
  def self.login(login, password)
    login == 'admin' &&
    Digest::SHA1.hexdigest(password) == Rails.application.secrets.admin_password
  end
end
