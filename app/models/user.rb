class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :likes ,dependent: :destroy
  has_many :comments ,dependent: :destroy
  has_many :memos ,dependent: :destroy
  has_many :lists ,dependent: :destroy

  validates :name, presence: true
  validates :encrypted_password, presence: true
  validates :email, presence: true

  # refile-画像投稿機能、画像を入れたいカラム名+id
  attachment :image

end
