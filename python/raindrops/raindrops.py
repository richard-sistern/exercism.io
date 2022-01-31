drops = {
    3:'Pling',
    5:'Plang',
    7:'Plong'
}

print(drops.items())

def convert(number):
    sound = ''.join([v for k, v in drops.items() if number % k == 0])
# return sounds