score = 40
letterGrade = "F"

if score >= 93:
    letterGrade = "A"

elif score >= 90:
    letterGrade = "A-"

elif score >= 87:
    letterGrade = "B+"

elif score >= 83:
    letterGrade = "B"

elif score >= 80:
    letterGrade = "B-"

elif score >= 77:
    letterGrade = "C+"

elif score >= 75:
    letterGrade = "C"

elif score >= 60:
    letterGrade = "D"

elif score <= 60:
    letterGrade = "F"

print(f"The letter grade is {letterGrade} based on the score of {score}")

print("Developer: Isory, Santana ")