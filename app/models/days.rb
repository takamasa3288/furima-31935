class Days < ActiveHash::Base
  self.data = [
    { id1: 0, name: '---' },
    { id1: 1, name: '1~2日で発送' },
    { id1: 2, name: '2~3日で発送' },
    { id1: 3, name: '4~7日で発送' },
  ]

  include ActiveHash::Associations
  has_many :items
end