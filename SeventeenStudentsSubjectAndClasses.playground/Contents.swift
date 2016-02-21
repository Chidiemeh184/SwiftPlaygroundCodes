//  NAME: CHIDI EMEH
//  COURSE: CSCI 2994 (iOS Programming Fundamentals)
//  FILENAME: SeventeenStudentsSubjectAndClasses.playground
//  DATE: 2/20/2016
//  EXERCISE 4: This program demonstrate the use of arrays
//              sets and dictionnaries in swift

import Foundation

//This is the list of all the students
let listOfAllStudents = ["Olivia Hudson",
                      "Bernadette Wilson",
                      "Wendy Brown",
                      "Alexandra Sharp",
                      "Adam Carr",
                      "Frank Vance",
                      "Julia Reid",
                      "Alan Duncan",
                      "Victor Black",
                      "Audrey Russell",
                      "Diane Harris",
                      "Dylan Dickens",
                      "Ruth Hill",
                      "Faith Lawrence",
                      "Adrian Vaughan",
                      "Joseph Mackay",
                      "Piers King"
                    ]


//The classes
//I used set to avoid duplicates

let allTheStudents = Set(listOfAllStudents)
var mathStudents = Set<String>()
var scienceStudents = Set<String>()
var englishStudents = Set<String>()
var historyStudents = Set<String>()

//The Students taking Math
mathStudents.insert(listOfAllStudents[0])
mathStudents.insert(listOfAllStudents[1])
mathStudents.insert(listOfAllStudents[14])
mathStudents.insert(listOfAllStudents[3])
mathStudents.insert(listOfAllStudents[11])
mathStudents.insert(listOfAllStudents[5])
mathStudents.insert(listOfAllStudents[8])


//The Students taking Science
scienceStudents.insert(listOfAllStudents[7])
scienceStudents.insert(listOfAllStudents[8])
scienceStudents.insert(listOfAllStudents[9])
scienceStudents.insert(listOfAllStudents[13])
scienceStudents.insert(listOfAllStudents[1])
scienceStudents.insert(listOfAllStudents[12])
scienceStudents.insert(listOfAllStudents[3])



//The Students taking English
englishStudents.insert(listOfAllStudents[16])
englishStudents.insert(listOfAllStudents[2])
englishStudents.insert(listOfAllStudents[7])
englishStudents.insert(listOfAllStudents[11])
englishStudents.insert(listOfAllStudents[8])
englishStudents.insert(listOfAllStudents[3])
englishStudents.insert(listOfAllStudents[5])


//The students taking History
historyStudents.insert(listOfAllStudents[1])
historyStudents.insert(listOfAllStudents[4])
historyStudents.insert(listOfAllStudents[15])
historyStudents.insert(listOfAllStudents[6])
historyStudents.insert(listOfAllStudents[3])
historyStudents.insert(listOfAllStudents[0])
historyStudents.insert(listOfAllStudents[5])


//The students in All students in Math and Science Class

var mathAndScienceStudents = mathStudents.union(scienceStudents)
print(mathStudents)
print(scienceStudents)
print(mathAndScienceStudents)


//The Math Students taking History Class
var mathStudentTakingHistory = mathStudents.intersect(historyStudents)


//Intersect
var takingAllFourClasses = allTheStudents.intersect(mathStudents).intersect(scienceStudents).intersect(englishStudents).intersect(historyStudents)

//ExclusiveOr
var mathAndEnglish = mathStudents.intersect(englishStudents)
var justMathAndEnglishStudents = mathStudents.exclusiveOr(englishStudents)
var justHistoryAndScience = historyStudents.exclusiveOr(scienceStudents)


//Subtract
var historyAndEnglishStudents = allTheStudents.subtract(mathAndScienceStudents)


//Set Equality
mathStudents.isSubsetOf(allTheStudents)
allTheStudents.isSupersetOf(mathAndScienceStudents)
historyAndEnglishStudents.isDisjointWith(mathAndScienceStudents)
takingAllFourClasses.isStrictSubsetOf(mathStudents)
mathStudents.isSupersetOf(justMathAndEnglishStudents)


//Expected output

//Todo Unimplemented Expected output 1
for eachStudent in mathStudents{
   var temp = eachStudent + ","
    print("Math = \(eachStudent)")
}


//Todo Unimplemented Expected output 2




//Todo Unimplemented Expected output 3








