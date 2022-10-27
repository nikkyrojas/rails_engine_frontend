# frozen_string_literal: true
class ItemService
  def self.conn
    Faraday.new(url: 'http://localhost:3000')
  end

  def self.get_all_items_data
    response = conn.get('/api/v1/items')
    parsed = JSON.parse(response.body, symbolize_names: true)[:data]
  end

  def self.get_item_data(id)
    response = conn.get("/api/v1/items/#{id}")
    parsed = JSON.parse(response.body, symbolize_names: true)[:data]
  end
end
