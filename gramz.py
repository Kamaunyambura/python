class Person:
    def __init__(self, name, age, gender):
        self.name = name
        self.age = age
        self.gender = gender

        def __introduce(self):
            print(f"Hey, my name is {self.name}. I am {self.age} years old and I am {self.gender}.")

            person1 = Person("Nyambura", 24, "female")

            person1.introduce()