module ApplicationHelper
	def total_cost_product_in_cart(elem)
		puts elem.inspect
		elem[:product].try(:price) * elem[:count].to_i
	end

	def total_cart_amount(elements)
		sum = 0
		elements.map do |key, elem|
			sum += total_cost_product_in_cart(elem)
		end
		number_to_currency(sum)
	end
end
