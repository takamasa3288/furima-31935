class State < ActiveHash::Base
  self.data = [
    { id1: 0, name: '---' },
    { id1: 1, name: '新品、未使用' },
    { id1: 2, name: '未使用に近い' },
    { id1: 3, name: '目立った傷や汚れなし' },
    { id1: 4, name: 'やや傷や汚れあり' },
    { id1: 5, name: '傷や汚れあり' },
    { id1: 6, name: '全体的に状態が悪い' }
  ]

  include ActiveHash::Associations
  has_many :items
end
