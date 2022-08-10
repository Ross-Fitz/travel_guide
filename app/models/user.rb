class User < ApplicationRecord
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  # The related forms can only be filled in 
  # if there is a user associated with the creation
  has_many :posts, dependent: :destroy
  has_many :comments, dependent: :destroy
  has_many :documents, dependent: :destroy
  has_one :checklist, dependent: :destroy
end
