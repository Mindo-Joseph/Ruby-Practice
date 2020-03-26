#define the bubble sort method
def bubble_sort(array)
    # get the array length coz we will use it to count how many times we loop
    n = array.length
    #Start the loop
    loop {
        # set our swapped check to be false
        swapped = false
        #Iterate through the array n-1 times
        (n-1).times { |i| 
            #Check if left side is greater than the right side
            if array[i] > array[i+1]
                #Swap the values and change the status of swap
                array[i], array[i+1] = array[i+1], array[i]
                swapped = true
            end

        }
        break if not swapped 

    }
    array
end
a = bubble_sort([1,3,4,1,5,0])
print a 