class Carriage < ActiveHash::Base
  self.data = [
    { id1: 0, name: '---' },
    { id1: 1, name: '着払い（購入者負担）' },
    { id1: 2, name: '送料込み（出品者負担' }
  ]

  include ActiveHash::Associations
  has_many :items
end
