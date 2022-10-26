# frozen_string_literal: true
class ItemFacade
  def self.all_items
    ItemService.get_all_items_data.map do |data|
      Item.new(data)
    end
  end

  def self.single_item(id)
    Item.new(ItemService.get_item_data(id))
  end

  def self.item_merchant(id)
    ItemService.get_item_merchant(id).map do |data|
      Merchant.new(data)
    end
  end
end