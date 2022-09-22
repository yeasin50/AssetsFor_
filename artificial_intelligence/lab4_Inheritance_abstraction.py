from abc import ABC, abstractmethod

class Data(ABC):
    @abstractmethod
    def details(self):
        pass

class Animal(Data):
    def __init__(self, lifeExpectancy):
        self.lifeExpectancy = lifeExpectancy

    def details(self):
        print("Category:",type(self).__name__)
        print("lifeExpectancy:",self.lifeExpectancy)
     

class Human(Animal):
    def __init__(self, duration ):
        super().__init__(duration)

    def details(self):
        super().details()
        print("Human thought is generally not rational because much of it is unconscious..\n")

class Mayflies(Animal):
    def __init__(self, duration):
        super().__init__(duration)


human  = Human("72.6 years")
human.details()

mayflies = Mayflies("24 hours")
mayflies.details()




