
require 'rails_helper'

RSpec.describe ItemService, type: :service do
  describe 'Class Methods', :vcr do
    describe '.get_all_items_data' do
      it 'returns data for all items' do
        items = ItemService.get_all_items_data
        expect(items).to be_an Array
        expect(items.count).to eq 2483
        expect(items[0]).to be_a Hash
        expect(items[0][:attributes]).to be_a Hash
        expect(items[0][:attributes][:name]).to be_a String
        expect(items[0][:attributes][:description]).to be_a String
        expect(items[0][:attributes][:unit_price]).to be_a Float
        expect(items[0][:attributes][:merchant_id]).to be_a Integer
      end
    end
    describe '.get_items_data(id)' do
      it 'returns data for single items' do
        item = ItemService.get_item_data(5)
        expect(item).to be_a Hash
        expect(item[:attributes]).to be_a Hash
        expect(item[:attributes][:name]).to be_a String
        expect(item[:attributes][:description]).to be_a String
        expect(item[:attributes][:unit_price]).to be_a Float
        expect(item[:attributes][:merchant_id]).to be_a Integer
      end
    end
  end
end
