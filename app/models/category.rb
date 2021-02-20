class Category < ActiveHash::Base
  self.data = [
    { id1: 0, name: '---' },
    { id1: 1, name: 'レディース' },
    { id1: 2, name: 'メンズ' },
    { id1: 3, name: 'ベビー・キッズ' },
    { id1: 4, name: 'インテリア・住まい・小物' },
    { id1: 5, name: '本・音楽・ゲーム' },
    { id1: 6, name: 'おもちゃ・ホビー・グッズ' },
    { id1: 7, name: '家電・スマホ・カメラ' },
    { id1: 8, name: 'スポーツ・レジャー' },
    { id1: 9, name: 'ハンドメイド' },
    { id1: 10, name: 'その他' }
  ]

  include ActiveHash::Associations
  has_many :items
end
