
def pet_shop_name(store_name)
  return store_name[:name]
end

#---------------------------------------------------------------
def total_cash(all_money)
 return all_money[:admin][:total_cash]
end

#-----------------------------------------------------------------
def add_or_remove_cash(store_name, number)
 store_name[:admin][:total_cash] += number
end

#-----------------------------------------------------------------
def pets_sold(sold_pets)
  return sold_pets[:admin][:pets_sold]
end

#-----------------------------------------------------------------
def increase_pets_sold(pet_sale, number)
    return pet_sale[:admin][:pets_sold] += number
end

#-----------------------------------------------------------------
def stock_count(store_name)
  store_count = store_name[:pets].count()
  return store_count
end

#-----------------------------------------------------------------
def pets_by_breed(store_name, the_breed)
breed_array = []
  for pet in store_name[:pets]
   if pet[:breed] == the_breed
     breed_array.push(pet)
   end
  end

return breed_array

end
#------------------------------------------------------------------
#HOW TO DO THIS USING THE .FETCH METHOD???
def find_pet_by_name(store_name, pet_name)
  for pet in store_name[:pets]
   if pet[:name] == pet_name
     return pet
   end
  end
 return nil
end
#------------------------------------------------------------------

def remove_pet_by_name(store_name, pet_name)
  for pet in store_name[:pets]
   if pet[:name] == pet_name
     store_name[:pets].delete(pet)
   end
  end
end
#------------------------------------------------------------------

def add_pet_to_stock(store_name, new_pet)
  new_pet = {
  name: "Jose",
  pet_type: :dog,
  breed: "Perro qliao",
  price: 200000
}
store_name[:pets].push(new_pet)
end
#------------------------------------------------------------------

  def customer_cash(customer)
   return customer[:cash]
  end
  #------------------------------------------------------------------

def remove_customer_cash(customer, number)
 customer[:cash] -= number

end
#------------------------------------------------------------------

def customer_pet_count(customer)
  customer[:pets].count()
end
#------------------------------------------------------------------
 def add_pet_to_customer(customer, new_pet)
  customer[:pets].push(new_pet)
end
