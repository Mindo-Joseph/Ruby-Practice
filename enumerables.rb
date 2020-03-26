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
        self.my_each { |i| array << i if yield(i)}
        array
        
    end

    def my_all?
        result = true
        self.my_each { |i| break result = false unless yield(i)}
        result
    end

    def my_any?
        result = false
        self.my_each { |i| break result = true if yield(i) }
        result
    end

    def my_none?
        result = true
        self.my_each { |i| break result = false if yield(i)}
        result
    end
end

test_array = [1,2,3,4,5,9]

#Calling the my_each function
#test_array.my_each { |i| print i.to_s + " "}

#Calling the my_each function with index
#test_array.my_each_with_index { |item, index| print item.to_s + ":" + index.to_s + " "}

#Calling the my_select 
#print test_array.my_select { |num| num < 4}

#Calling my_all function
#print test_array.my_all? { |i| i > 4}

#Calling my_any function
#print test_array.my_any? { |i| i < 0}

#Calling the my_none? method
#print test_array.my_none? { |i| i < 10}