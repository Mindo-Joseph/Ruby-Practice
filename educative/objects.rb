class Person
    def initialize(name)
        @name = name
    end

    def name
        @name
    end
    def greet(other)
        name = other.name
        print "Hey #{name} nice to meet you I am #{self.name}"
    end

    def password(password)
        @password = password
    end

end

person = Person.new("Joe")
friend = Person.new("Kevin")

puts person.password("Stuff")
