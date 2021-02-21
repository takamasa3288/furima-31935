class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  with_options presence: true do
    validates :name
    validates :last_name, format: { with: /\A[ぁ-んァ-ヶ一-龥]+\z/ }
    validates :first_name, format: { with: /\A[ぁ-んァ-ヶ一-龥]+\z/ }
    validates :last_name_kana, format: { with: /\A[ァ-ヶー－]+\z/ }
    validates :first_name_kana, format: { with: /\A[ァ-ヶー－]+\z/ }
    validates :birth_day

    VALID_PASSWORD_REGEX = /\A(?=.*?[a-z])(?=.*?\d)[a-z\d]+\z/i

    validates :password, length: { minimum: 6 }, format: { with: VALID_PASSWORD_REGEX }
  end
  has_many :items
end
