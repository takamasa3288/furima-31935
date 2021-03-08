class OrderAddress
  include ActiveModel::Model
  attr_accessor :post_code, :prefecture_id, :city, :house_number, :building_name, :phone_number

  with_options presence: true do
    validates :post_code, format: { with: /\A[0-9]{3}-[0-9]{4}\z/ }
    validates :prefecture_id, numericality: { other_than: 0 }
    validates :city
    validates :house_number 
    validates :phone_number, format: { with: /\A\d{10,11}\z/ }
  end

  def save
    user = User.create(name: name, email: email, password: password, last_name: last_name, first_name: first_name, last_name_kana: last_name_kana, first_name_kana: first_name_kana, birth_day: birth_day)

    item = Item.create(name: name, description: description, category_id: category_id, state_id: state_id, carriage_id: carriage_id, area_id: area_id, days_id: days_id, price: price, user_id: user.id)

    order = Order.create(user_id: user.id, item_id: item.id)

    Address.create(post_code: post_code, prefecture_id: prefecture_id, city: city, house_number: house_number, building_name: building_name, phone_number: phone_number, order_id: order.id)
  end
end