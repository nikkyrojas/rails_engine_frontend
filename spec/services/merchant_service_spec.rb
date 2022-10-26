# frozen_string_literal: true

require 'rails_helper'

RSpec.describe MerchantService, type: :service do
  describe 'Class Methods', :vcr do
    describe '.get_all_merchants' do
      it 'returns data for all merchants' do
        merchants = MerchantService.get_all_merchants_data
        expect(merchants.count).to eq 100
        expect(merchants[0]).to be_a Hash
        expect(merchants[0][:attributes]).to be_a Hash
        expect(merchants[0][:attributes][:name]).to be_a String
      end
    end
    describe '.get_merchant_data(id)' do
      it 'returns data for single merchant' do
        merchant = MerchantService.get_merchant_data(1)
        expect(merchant).to be_a Hash
        expect(merchant[:attributes]).to be_a Hash
        expect(merchant[:attributes][:name]).to be_a String
      end
    end
    describe '.get_merchant_items(id)' do
      it 'gets items for a merchant by its id' do
        merchant_items = MerchantService.get_merchant_items(1)
        expect(merchant_items).to be_an Array
        expect(merchant_items[0]).to be_a Hash
        expect(merchant_items[0][:attributes]).to be_a Hash
        expect(merchant_items[0][:attributes][:name]).to be_a String
        expect(merchant_items[0][:attributes][:description]).to be_a String
        expect(merchant_items[0][:attributes][:unit_price]).to be_a Float
        expect(merchant_items[0][:attributes][:merchant_id]).to be_a Integer
      end
    end
  end
end
