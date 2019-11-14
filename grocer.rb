require 'pp'
require 'pry'

def find_item_by_name_in_collection(name, collection)
  index = 0 
  while index < collection.length do 
    if name == collection[index][:item]
      return collection[index]
    end
    index += 1
  end 
end

def consolidate_cart(cart)
 updated_cart = []
 cart.each do |item|
   if item = find_item_by_name_in_collection(item[:item])
     item[:count] +=1 
   else 
     item == nil 
     item = {:item => cart[:item],
     :price =>cart[:price],
     :clearance => cart[:clearance],
     :count => cart[:clearance]
     }
     
     updated_cart.push(item)
end
end
end 
updated_cart
end

def apply_coupons(cart, coupons)
  # Consult README for inputs and outputs
  #
  # REMEMBER: This method **should** update cart
end

def apply_clearance(cart)
  # Consult README for inputs and outputs
  #
  # REMEMBER: This method **should** update cart
end

def checkout(cart, coupons)
  # Consult README for inputs and outputs
  #
  # This method should call
  # * consolidate_cart
  # * apply_coupons
  # * apply_clearance
  #
  # BEFORE it begins the work of calculating the total (or else you might have
  # some irritated customers
end
