require 'restaurant'

describe 'restaurant' do
  subject { Restaurant.new }
  describe '#show_menu' do
    it 'expects restaurant to respond to show_menu' do
    expect(subject).to respond_to(:show_menu)
    end

    it 'expects restaurant to show the menu' do
      expect(subject.show_menu).to eql (subject.menu)
    end

  end

end
