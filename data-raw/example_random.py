import random
import csv

random.seed(1356)

names = ["Frank", "Nugent", "Gordon", "Philipp", "Thomas"]

numbers = [i for i in range(2 * len(names))]

numbers1 = [i+5 for i in range(2 * len(names))]

numbers2 = [i-5 for i in range(2 * len(names))]

media = ["Facebook", "Instagram", "Twitter", "Youtube", "Snapchat", "Vine",
"Google", "LinkedIn"]

letters = [i for i in range(65, 71)]
letters.remove(69)
letters = list(map(lambda z: chr(z), letters))

primary = ["Extraversion", "Introversion"]
secondary = ["Sensing", "Intuition"]
tertiary = ["Thinking", "Feeling"]
quarternary = ["Juding", "Perceiving"]

state = ['AL', 'AK', 'AZ', 'AR', 'CA', 'CO', 'CT', 'DE', 'DC', 'FL', 'GA',
	'HI', 'ID', 'IL', 'IN', 'IA', 'KS', 'KY', 'LA', 'ME', 'MD',
	'MA', 'MI', 'MN', 'MS', 'MO', 'MT', 'NE', 'NV', 'NH', 'NJ', 'NM', 'NY',
	'NC', 'ND', 'OH', 'OK', 'OR', 'PA', 'RI', 'SC', 'SD', 'TN', 'TX', 'UT',
	'VT', 'VA', 'WA', 'WV', 'WI', 'WY']


obj = []

for i in range(10000):
	sub = list()
	sub = [str(random.choice(numbers)), str(random.choice(numbers1)),
		str(random.choice(numbers2)), random.choice(names),
		random.choice(media), round(random.uniform(0, 1), 4),
		random.choice(letters), random.choice(primary),
		random.choice(secondary), random.choice(tertiary),
		random.choice(quarternary), random.choice(state)]
	obj.append(sub)

"""
with open("ExampleBig.csv", "w") as ex:
	writer = csv.writer(ex)
	writer.writerow(["X", "Y", "Z", "Name", "Media", "Score", "Rating",
		"Primary", "Secondary", "Tertiary", "Quarternary", "State"])
	writer.writerows(obj)
"""
small = []

for i in range(200):
	sub = list()
	sub = [str(random.choice(numbers)), str(random.choice(numbers1)),
		str(random.choice(numbers2)), random.choice(names),
		random.choice(media), round(random.uniform(0, 1), 4),
		random.choice(letters)]
	small.append(sub)

with open("data-raw/Example.csv", "w") as smol:
	writing = csv.writer(smol)
	writing.writerow(["X", "Y", "Z", "Name", "Media", "Score", "Rating"])
	writing.writerows(small)





