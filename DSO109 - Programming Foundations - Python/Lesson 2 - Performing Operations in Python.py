#part 1
day = "25"
year = "1996"
month = "April"
 
my_birthday = month + " " + day + ", " + year
 
print(my_birthday)

#Part 2
first = "happy"
second = "birthday"
third = "to"
fourth = "you"
 
final = first + " " + second + " " + third + " " + fourth
print(final.upper())

#Part 3
age = 15

if age <= 10:
    print("not permitted")
elif age <= 15:
    print("Permitted with a parent")
elif age < 18:
    print("Permitted with anyone over 18")
elif age >= 18: 
    print("permitted to attend alone")