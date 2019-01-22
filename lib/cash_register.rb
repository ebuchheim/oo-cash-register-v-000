

class CashRegister

    attr_accessor :total, :discount, :last_transcation

    def initialize(discount = 0)
        @discount = discount
        @total = 0
        @items_array = []
        @last_transcation = 0
    end

    def total
        @total
    end

    def add_item(title, price, quantity = 1)
        quantity.times do 
            @items_array << title
        end
        @last_transcation = (price * quantity)
        @total += (price * quantity)
    end

    def apply_discount
        if !(@discount.to_f == 0.0)
            discount_fraction = (100.0 - @discount)/100.0
            @total = @total * discount_fraction
            "After the discount, the total comes to $#{@total.to_i}."
        else
            "There is no discount to apply."
        end
    end

    def items
        @items_array
    end

    def void_last_transaction
        @total = @total - @last_transcation
    end

end