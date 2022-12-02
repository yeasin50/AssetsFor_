year  = int(input("Enter year "))

# 400 & 4 OK; but not 100
if year %4==0 or (year%400==0 and year !=100):
    print("the ", year, "leap year")
    if year==2016:
        print("got on nested if")
else:
    print(year, "is not a leap year")
    




