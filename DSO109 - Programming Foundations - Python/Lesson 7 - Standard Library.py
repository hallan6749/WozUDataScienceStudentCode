#part 1
import datetime

todays_date = datetime.datetime.now()
print("Today is:", todays_date)

current_time = datetime.datetime.now().time()
print("Time:", current_time)

#part 2
poem_string = "Tiny little secrets,\n"
poem_string += "Get buried in the dirt,\n"
poem_string += "And if they were dug up,\n"
poem_string += "Someone would probably get hurt."

poem_file = open('poem.txt', 'w')
poem_file.write(poem_string)
poem_file.close()

poem_file = open('poem.txt', 'r')
print(poem_file.read())
poem_file.close()