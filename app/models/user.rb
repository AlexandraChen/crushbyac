class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  validates :email, presence: true, length: {maximum: 250}
  validates :full_name, presence: true, format: { with: /\A[^0-9`!@#\$%\^&*+_=]+\z/ }
end
 