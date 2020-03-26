module Enumerable

    def my_each
        self.length.times { |i| yield (self[i])}
        self
    end

    def my_each_with_index
        self.length.times { |i| yield(self[i], i)}
        self
    end
    
    def my_select
        array = []
        
    end
end

test_array = [1,2,3,4,5,9]

#Calling the my_each function
#test_array.my_each { |i| print i.to_s + " "}
#Calling the my_each function with index
test_array.my_each_with_index { |item, index| print item.to_s + ":" + index.to_s + " "}