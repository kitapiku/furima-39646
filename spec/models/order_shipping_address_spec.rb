require 'rails_helper'

RSpec.describe OrderShippingAddress, type: :model do
  describe '商品購入機能' do
    before do
      user = FactoryBot.create(:user)
      item = FactoryBot.create(:item)
      sleep 0.1
      @order_shipping_address = FactoryBot.build(:order_shipping_address, user_id: user.id, item_id: item.id)
    end
    context '購入ができる場合' do
      it '必要な値が全て正しく入力されていれば購入できる' do
        expect(@order_shipping_address).to be_valid
      end
      it 'buildingが空でも購入できる' do
        @order_shipping_address.building = ''
        expect(@order_shipping_address).to be_valid
      end
    end

    context '購入ができない場合' do
      it 'クレジットカード情報がないと購入できない' do
        @order_shipping_address.token = ''
        sleep 0.1
        @order_shipping_address.valid?
        expect(@order_shipping_address.errors.full_messages).to include("Token can't be blank")
      end
      it '郵便番号が空だと購入できない' do
        @order_shipping_address.post_code = ''
        sleep 0.1
        @order_shipping_address.valid?
        expect(@order_shipping_address.errors.full_messages).to include("Post code can't be blank")
      end
      it '郵便番号が「半角数字3文字-半角数字4文字」の形でないと購入できない' do
        @order_shipping_address.post_code = '1234-567'
        sleep 0.1
        @order_shipping_address.valid?
        expect(@order_shipping_address.errors.full_messages).to include('Post code is invalid. Include hyphen(-)')
      end
      it '郵便番号はハイフンが含まれないと購入できない' do
        @order_shipping_address.post_code = '1234567'
        sleep 0.1
        @order_shipping_address.valid?
        expect(@order_shipping_address.errors.full_messages).to include('Post code is invalid. Include hyphen(-)')
      end
      it '都道府県が選択されてないと購入できない' do
        @order_shipping_address.prefecture_id = 1
        sleep 0.1
        @order_shipping_address.valid?
        expect(@order_shipping_address.errors.full_messages).to include("Prefecture can't be blank")
      end
      it '市区町村が空だと購入できない' do
        @order_shipping_address.municipalities = ''
        sleep 0.1
        @order_shipping_address.valid?
        expect(@order_shipping_address.errors.full_messages).to include("Municipalities can't be blank")
      end
      it '番地が空だと購入できない' do
        @order_shipping_address.address = ''
        sleep 0.1
        @order_shipping_address.valid?
        expect(@order_shipping_address.errors.full_messages).to include("Address can't be blank")
      end
      it '電話番号が空だと購入できない' do
        @order_shipping_address.phone_number = ''
        sleep 0.1
        @order_shipping_address.valid?
        expect(@order_shipping_address.errors.full_messages).to include("Phone number can't be blank")
      end
      it '電話番号が9桁以下だと購入できない' do
        @order_shipping_address.phone_number = '123456789'
        sleep 0.1
        @order_shipping_address.valid?
        expect(@order_shipping_address.errors.full_messages).to include('Phone number is too short (minimum is 10 characters)')
      end
      it '電話番号が12桁以下だと購入できない' do
        @order_shipping_address.phone_number = '123456789012'
        sleep 0.1
        @order_shipping_address.valid?
        expect(@order_shipping_address.errors.full_messages).to include('Phone number is too long (maximum is 11 characters)')
      end
      it '電話番号にハイフンが入っていると登録できない' do
        @order_shipping_address.phone_number = '090-1234-5678'
        sleep 0.1
        @order_shipping_address.valid?
        expect(@order_shipping_address.errors.full_messages).to include('Phone number is not a number',
                                                                        'Phone number is too long (maximum is 11 characters)')
      end
      it 'userが紐づいていないと登録できない' do
        @order_shipping_address.user_id = nil
        @order_shipping_address.valid?
        expect(@order_shipping_address.errors.full_messages).to include("User can't be blank")
      end
      it 'itemが紐づいていないと登録できない' do
        @order_shipping_address.item_id = nil
        @order_shipping_address.valid?
        expect(@order_shipping_address.errors.full_messages).to include("Item can't be blank")
      end
    end
  end
end
