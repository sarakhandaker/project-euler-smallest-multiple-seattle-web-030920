# # Implement your procedural solution here!
# def smallest_multiple(input)
#     array=[]
#     (2..input).each do |i|
#         array.push(i)
#     end

#     keeplooking=true

#     number=input

#     while keeplooking

#         good=true

#         array.each do |i|
#             if number%i !=0
#                 good=false
#             end
#         end

#         if good 
#             keeplooking=false
#         else 
#             number+=1
#         end
        
#     end
#     number
# end

def smallest_multiple(input)
    placeholder = 1
    (2..input).each do |i|
      placeholder *= i / gcd(placeholder, i)
    end
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