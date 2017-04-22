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

  describe '#pretty_print' do
    it 'expects restaurant to respond to pretty_print' do
      expect(subject).to respond_to(:pretty_print)
    end

    it 'expects restaurant to pretty_print' do
      expect(subject.pretty_print). to eq(subject.pretty_print)
    end
  end

  describe '#order' do
    it 'tests response to the order method' do
      expect(subject).to respond_to(:order)
    end
    it 'expects the customer to be able to place an order' do
      subject.order("Battered squid")
      expect(subject.orders).to include ("Battered squid")
    end

    it 'expects to raise an error' do
      expect {subject.order("bacon") }.to raise_error "Item not on the menu."
    end
  end

end
