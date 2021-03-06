class UserAuthenticator
  class AuthenticationError < StandardError; end

  attr_reader :authenticator

  def initialize(code: nil)
    @authenticator = if code.present?
                       Oauth.new(code)
                     else
                       Standard.new(login: nil, password: nil)
                     end
  end

  def perform
    authenticator.perform
  end

  def user
    authenticator.user
  end

  def access_token
    authenticator.access_token
  end
end
