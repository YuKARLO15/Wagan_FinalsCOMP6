from faker import Faker

fake = Faker()

# Generate fake data
for _ in range(5):
    print(fake.name(), fake.email())