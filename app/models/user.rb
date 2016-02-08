class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  has_many :products
  has_many :colors
  has_many :clients
  
  validates :email, presence: true, format: { with: /.+@.+\..+/i }
  validates :full_name, presence: true, format: { with: /\A[^0-9`!@#\$%\^&*+_=]+\z/ }
 	validate :full_name_length

  def full_name_length
		fullname = full_name.split
		if fullname.size <= 1
			errors.add(:full_name, I18n.t(:full_name_error))
		end
	end
 
end

