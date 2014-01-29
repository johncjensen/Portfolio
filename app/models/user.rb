class User < ActiveRecord::Base
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  validates_uniqueness_of :email, :allow_blank => true
  has_many :posts, foreign_key: "author_id"
end
