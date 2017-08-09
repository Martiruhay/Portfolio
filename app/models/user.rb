class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable,:lockable,:timeoutable,:omniauthable,:registerable,:recoverable,:validatable
  devise :database_authenticatable, :rememberable, :trackable
end
