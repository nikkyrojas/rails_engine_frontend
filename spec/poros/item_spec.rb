# frozen_string_literal: true

require 'rails_helper'

RSpec.describe Item do
  describe 'instantiation' do
    let(:data) do
     {id: 222,
      attributes:
          {
            name: 'Skateboard',
            description: "Blue Skateboard",
            unit_price: 12.50,
            merchant_id: 2

          }
    }
    end

    it 'instantiates described class' do
      item = Item.new(data)
      expect(item.id).to eq(222)
      expect(item.name).to eq('Skateboard')
      expect(item.description).to eq("Blue Skateboard")
      expect(item.unit_price).to eq(12.50)
    end
  end
end