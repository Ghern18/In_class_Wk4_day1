#take time to chew on it, read back the problem. throw some comments.
# takes list
# puts list in order, lowest to highest
# takes firts index (ie lowest number)
# 
#def smallest_number(list):
    #sorted = sorted(list)
    #print(sorted[0])
   # #time complextiy is same as log in

#smallest_number([50, 30, 4, 2, 11, 0])

def smallest_number(list):
    small = list[0]
    for num in list:
        if num <= small:
         small = num
    return(small) #use return for all functions

print(smallest_number([40,3,4,2])) #print here instead

#we would have to iterate the list, list would be linear, big steps goin through, 
#first goal get a working solution, then get the 
# Get in habbit of commenting code to leave trail of bread crumbs when going back to your code.
