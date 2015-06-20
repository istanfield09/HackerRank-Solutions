# array width of length N, where width[k] represents the width of the kth segment of the service lane.
# bike, car, and truck, repped as 1, 2, and 3

# if width[k] = 1, only the bike can pass through the kth segment
# if width[k] = 2, the bike and car can pass through the kth segment
# if width[k] = 3, all three vehicles can pass through the kth segment


arrayWidth_testCase = input()
inputs = [int(n) for n in arrayWidth_testCase.split()]


# N
arrayWidth = inputs[0]

# T
testCases = inputs[1]

Nwidths = input()
Nwidth_array = [int(n) for n in Nwidths.split()]

answers_array = []

for i in range(testCases):

	enterExit = input()
	enterExits_array = [int(n) for n in enterExit.split()]

	smallestInt = 3

	for a in range(enterExits_array[0], enterExits_array[1] + 1):
		if Nwidth_array[a] <= smallestInt:
			smallestInt = Nwidth_array[a]

	answers_array.append(smallestInt)

	


for x in answers_array:
	print(x)











