# Implement your object-oriented solution here!
class SmallestMultiple
    def initialize(input)
        @input=input
    end

    def lcm
        placeholder = 1
        (2..@input).each {|i| placeholder *= i / gcd(placeholder, i) }
        placeholder
    end
          
    def gcd(a, b)
        while b > 0
            a %= b
        return b if a == 0
            b %= a
        end
        a
    end
end