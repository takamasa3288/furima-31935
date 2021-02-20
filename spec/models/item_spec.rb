require 'rails_helper'

RSpec.describe Item, type: :model do
  before do
    @item = FactoryBot.build(:item)
    @item.image = fixture_file_upload('public/image/sample1.png')
  end

  describe '商品出品' do
    context '商品の出品ができるとき' do
      it 'すべての項目の入力が存在すれば出品できる' do
        expect(@item).to be_valid
      end
    end
    context '商品出品がうまく行かないとき' do
      it 'imageが存在しない場合' do
        @item.image = nil
        @item.valid?
        expect(@item.errors.full_messages).to include("Image can't be blank")
      end
      it 'nameが存在しない場合' do
        @item.name = nil
        @item.valid?
        expect(@item.errors.full_messages).to include("Name can't be blank")
      end
      it 'descriptionが存在しない場合' do
        @item.description = nil
        @item.valid?
        expect(@item.errors.full_messages).to include("Description can't be blank")
      end
      it 'category_idが選択されていない場合' do
        @item.category_id = 0
        @item.valid?
        expect(@item.errors.full_messages).to include('Category must be other than 0')
      end
      it 'state_idが選択されていない場合' do
        @item.state_id = 0
        @item.valid?
        expect(@item.errors.full_messages).to include('State must be other than 0')
      end
      it 'carriage_idが選択されていない場合' do
        @item.carriage_id = 0
        @item.valid?
        expect(@item.errors.full_messages).to include('Carriage must be other than 0')
      end
      it 'area_idが選択されていない場合' do
        @item.area_id = 0
        @item.valid?
        expect(@item.errors.full_messages).to include('Area must be other than 0')
      end
      it 'days_idが選択されていない場合' do
        @item.days_id = 0
        @item.valid?
        expect(@item.errors.full_messages).to include('Days must be other than 0')
      end
      it 'priceが存在しない場合' do
        @item.price = nil
        @item.valid?
        expect(@item.errors.full_messages).to include("Price can't be blank")
      end
      it 'priceが300未満の場合' do
        @item.price = 299
        @item.valid?
        expect(@item.errors.full_messages).to include('Price must be greater than or equal to 300')
      end
      it 'priceが9999999より多い場合' do
        @item.price = 10_000_000
        @item.valid?
        expect(@item.errors.full_messages).to include('Price must be less than or equal to 9999999')
      end
      it 'priceが全角数字の場合' do
        @item.price = '１０００'
        @item.valid?
        expect(@item.errors.full_messages).to include('Price is not a number')
      end
      it 'priceが数字以外の場合' do
        @item.price = 'aaaaaaa'
        @item.valid?
        expect(@item.errors.full_messages).to include('Price is not a number')
      end
    end
  end
end
