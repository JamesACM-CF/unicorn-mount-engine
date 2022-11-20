class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  has_many :articles, class_name: 'Blorgh::Article', foreign_key: :author_id
  has_many :comments, class_name: 'Blorgh::Comment', foreign_key: :author_id
end
