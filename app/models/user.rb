class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  validates :email, presence: true, length: {maximum: 250}
  validates :full_name, presence: true, format: { with: /\A[^0-9`!@#\$%\^&*+_=]+\z/ }
 	validate :full_name_length

  def full_name_length
		fullname = full_name.split
		if fullname.size <= 1
			errors.add(:full_name, "Please, write your full name")
		end
	end
 
end

