# frozen_string_literal: true

require 'rails_helper'

RSpec.describe Merchant do
  describe 'instantiation' do
    let(:data) do
     {id: 238,
      attributes:
          {
            name: 'Bob Joe'
          }
    }
    end

    it 'instantiates described class' do
      merchant = Merchant.new(data)
      expect(merchant.name).to eq('Bob Joe')
      expect(merchant.id).to eq(238)
    end
  end
end