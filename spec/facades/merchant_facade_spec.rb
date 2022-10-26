
# frozen_string_literal: true

require 'rails_helper'

RSpec.describe MerchantFacade do
  describe '.all_merchants', :vcr do
    it 'retrieves all merchants' do
      merchants = MerchantFacade.all_merchants
      expect(merchants).to be_an Array
      expect(merchants[0]).to be_a Merchant
      expect(merchants[0].id).to be_a String
      expect(merchants[0].name).to be_a String
    end
  end
  describe '.merchant', :vcr do
    it 'retrieves single merchant' do
      merchant = MerchantFacade.merchant(1)
      expect(merchant).to be_a Merchant
      expect(merchant.id).to be_a String
      expect(merchant.name).to be_a String
    end
  end
end
