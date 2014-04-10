class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  def self.authenticate!(email, password)
    user = User.where(email: email).first
    # request_mock = OpenStruct.new(remote_ip: '123.456.789.101')
    # user.update_tracked_fields!(request_mock)
    return (user.valid_password?(password) ? user : nil) unless user.nil?
    nil
  end

  def self.current
    Thread.current[:user]
  end

  def self.current=(user)
    Thread.current[:user] = user
  end

end
