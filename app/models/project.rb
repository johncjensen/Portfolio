class Project < ActiveRecord::Base
  validates :name, length: { minimum: 3 }
  has_many :comments, as: :commentable
end
