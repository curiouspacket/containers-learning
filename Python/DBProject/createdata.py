from faker import Faker

fake = Faker()
names = [fake.unique.name() for i in range(500)]
address = [fake.address() for i in range (500)]

# User Faker to create Cx data to put into DB
fake_userorder = [
    {
        "Name" : fake.name(),
        "Address" : fake.address(),
        "Phone" : fake.phone_number()
    }for x in range(10)]

print(fake_userorder)

#Create a process to send data creation to csv or directly to DB
