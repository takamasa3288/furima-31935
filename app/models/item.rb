class Item < ApplicationRecord
  with_options presence: true do
    validates :name
    validates :description
    validates :price
    validates :user
    with_options numericality: { other_than: 0 } do
      validates :categorry_id
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
