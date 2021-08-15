class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  has_many :events, foreign_key: 'host_id'
  has_many :guest_lists, foreign_key: :guest_id
  has_many :occasions, through: :guest_lists
end
