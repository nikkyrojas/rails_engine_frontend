# frozen_string_literal: true

require 'rails_helper'

RSpec.describe 'item show page' do
  it 'items name should link to items show page' do
    visit items_path
    click_on 'Item Nemo Facere'

    expect(current_path).to eq('/items/4')
    expect(page).to have_content('Item Nemo Facere')
    expect(page).to have_content('Description:')
    expect(page).to have_content('Unit Price:')
    expect(page).to_not have_content('Provident At')
  end
end
