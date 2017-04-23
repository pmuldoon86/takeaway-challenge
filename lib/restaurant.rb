require_relative 'menu'
require 'twilio-ruby'
require_relative 'text'

class Restaurant
  include Text
  attr_reader :menu, :orders

  def initialize
    @menu = {"Battered squid" => 5, "Rump steak" => 16, "Chips" => 2, "Merlot" => 5}
    @total = []
    @orders = []
    @orders_checked = []
  end

  def pretty_print
    @menu.each { |k, v| puts "#{k}: £#{v}" }
  end

  def show_menu
    pretty_print
  end

  def order(item)
    @total << @menu.values_at(item) && @orders << item if @menu.has_key?(item)
    raise "Item not on the menu." if !@menu.has_key?(item)
  end

  def total_price
    @total.flatten.inject(:+)
  end

  def check_total
    @orders.each { |a| @orders_checked << @menu.values_at(a) }
    @orders_checked.flatten.inject(:+)
  end

  def send_text
    text
  end
end
