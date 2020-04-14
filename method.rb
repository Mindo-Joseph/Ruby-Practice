def test(names)
    n = names.size
    swap = true
    while swap
        sorted_names = []
        swap = false
        n.times { |i|
            if names[i] == names[n-1]
                sorted_names << names[i]
            elsif names[i] > names[i+1]
                sorted_names << names[i+1]
                swap = true
                names[i+1] = names[i]
            else 
                sorted_names << names[i]

            end
            i+=1
        }
        names = sorted_names
    end
    sorted_names
end
    
c = test(['David','Leo','Bello', 'Zoro', 'ElChapo','Joe', 'Obinna', 'Steve', 'Queen','Kenny'])
p c