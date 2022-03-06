#Part 1 and 2
class Stadium:
    #: The docstring for the 'Standium' class
    """The summary docstring for the Stadium class. This class represents a Stadium."""
    def __init__ (self, name, city_state, capacity, sport_played, seats_available):
        self.name = name #: The 'name' property represetns the Stadium's name
        self.city_state = city_state #: The 'city_state' property represetns the Stadium's city_state
        self.capacity = capacity #: The 'capacity' property represetns the Stadium's capacity
#: Adding two methods to 'Stadium' class called sport_played and seats_available
        self.sport_played = sport_played
        self.seats_available = seats_available

#: One method, 'describe_stadium' are defined for the 'Stadium' class
    """The summary docstring for the 'describe_stadium' method in the Stadium class. This method represents a description."""
    def describe_stadium (self):
            print("The " + self.name + "is located in " + self.city_state + " and holds " + self.capacity + " fans.")
            print("The following sport is mainly palyed in this staium: " + self.sport_played + ". There are " + self.seats_available + " seats still available for tonight's game.")

# Create an Instance of that class
stadium1 = Stadium("Mercedes Benz Arena", "Atlanta, GA", "70,000", "Football", "15000 seats")

# Call that Function
stadium1.describe_stadium()