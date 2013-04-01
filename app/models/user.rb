class User < ActiveRecord::Base
  attr_accessible :name, :password, :password_confirmation

  has_secure_password

  has_many :clients, :dependent => :destroy
  has_many :projects, through: :clients
  has_many :tasks, through: :projects
end
