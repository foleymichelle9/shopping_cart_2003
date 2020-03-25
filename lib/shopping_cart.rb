class ShoppingCart

  attr_reader :name, :capacity, :products

  def initialize(name, capacity)
    @name = name
    @capacity = capacity.to_i
    @products = []
  end

  def add_product(product)
    @products << product
  end

  def total_number_of_products
    product_total = @products.map do |product|
      product.quantity
    end
      product_total.sum
  end

  def is_full?
    return true if total_number_of_products >= 30
    false
  end

  def products_by_category(category)
    @products.find_all do |product|
      product.category == category
    end
  end

  def details
    details = Hash.new
    details[:name] = name
    details[:capacity] = capacity
    details
  end

  def percentage_occupied
  ((total_number_of_products * 100) /  @capacity.to_f).round(2)
  end

  def sorted_products_by_quantity
    sorted = @products.sort_by { |product| product.quantity }
      sorted.reverse
  end

  def product_breakdown
    breakdown = Hash.new
    
  end
end
