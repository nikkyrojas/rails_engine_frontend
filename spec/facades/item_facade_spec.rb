
# frozen_string_literal: true

require 'rails_helper'

RSpec.describe ItemFacade do
  describe '.all_items', :vcr do
    it 'retrieves all items' do
      items = ItemFacade.all_items
      expect(items).to be_an Array
      expect(items[0]).to be_a Item
      expect(items[0].id).to be_a String
      expect(items[0].merchant_id).to be_a Integer
      expect(items[0].unit_price).to be_a Float
      expect(items[0].name).to be_a String
      expect(items[0].description).to be_a String
    end
  end
  describe '.item', :vcr do
    it 'retrieves single item' do
      item = ItemFacade.single_item(5)
      expect(item).to be_a Item
      expect(item.id).to be_a String
      expect(item.merchant_id).to be_a Integer
      expect(item.unit_price).to be_a Float
      expect(item.name).to be_a String
      expect(item.description).to be_a String
    end
  end
end
