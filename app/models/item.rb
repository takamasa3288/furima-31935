class Item < ApplicationRecord
  with_options presence: true do
    validates :name, length:{ maximum: 40 }
    validates :description, length:{ maximum: 1000 }
    validates :price, format: { with: /\A[0-9]+\z/}, numericality: { greater_than_or_equal_to: 300, less_than_or_equal_to: 9999999}
    validates :user
    validates :image
    with_options numericality: { other_than: 0 } do
      validates :category_id
      validates :state_id
      validates :carriage_id
      validates :area_id
      validates :days_id
    end
  end
  belongs_to :user
  has_one_attached :image
  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to :category
  belongs_to :state
  belongs_to :carriage
  belongs_to :area
  belongs_to :days
end
