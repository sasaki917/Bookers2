class User < ApplicationRecord
	# Include default devise modules. Others available are:
	# :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
 	devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
	validates :name, presence: true, length: {maximum: 10, minimum: 2}
	validates :introduction, length: { maximum: 50 }
	attachment :profile_image
	has_many :books, dependent: :destroy
end
