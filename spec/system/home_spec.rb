require 'rails_helper'

RSpec.describe 'Home', type: :system do
  before do
    driven_by :selenium_chrome_headless
  end

  describe 'トップページの検証' do
    before { visit '/' }

    it 'ウェルカムメッセージが表示される' do
      expect(page).to have_content('Welcome to TechLog')
    end

    it 'サブタイトルが表示される' do
      expect(page).to have_content('Share your technical knowledge and experiences with the world')
    end
  end
end
