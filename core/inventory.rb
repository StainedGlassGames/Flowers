class Inventory
	@@items = []
	@@item_count = 0

	def Inventory.view
		puts "Inventory:"
    @@items.each do |item|
      puts item
    end 
		puts "Capacity: " << @@items.length.to_s << "/15"
	end

	def Inventory.add_item(item)
		@@items << item
	end
end