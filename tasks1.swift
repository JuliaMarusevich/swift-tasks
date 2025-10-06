//
//  tasks1.swift
//  
//
//  Created by Julia Marusevich on 06.10.2025.
//

 // classes and structures

 let student1 = (name: "Alex", age: 20)
 let student2 = (name: "Bob", age: 22)
 let student3 = (name: "Sam", age: 23)


 class Student {
     var name : String
     var age : Int
     init () {
         name = "No name"
         age = 20
     }
     init(name: String, age: Int) {
         self.name = name
         self.age = age
     }
 }
 let student1 = Student(name: "Bob", age: 18)
 student1.name = "Alex"
 student1.age = 20

 let student2 = Student()
 student2.name = "Bob"
 student2.age = 22

 let student3 = Student()
 student3.name = "Sam"
 student3.age = 23

 var student4 = student1
 student4.age = 18
 student4.name = "AAA"
 // автоматически меняется и student, student4 = student1

 func addOneYear(to student: inout Student) {
     student.age += 1
 }


 struct StudentStruct {
     var name: String
     var age: Int
 }
 var  stStruct1 = StudentStruct(name: "Sam", age: 25)

 var stStruct2 = stStruct1

 stStruct2.age = 30
 stStruct2.name = "Samuel"



 var arrayStructs: [StudentStruct] = [StudentStruct(name: "Anna", age: 30)]
 arrayStructs[0]
 arrayStructs[0].age = 50
 arrayStructs[0] // 50

 var arrayClasses: [Student] = [Student(name: "Alex", age: 9)]
 arrayClasses[0]
 arrayClasses[0].age = 60
 arrayClasses[0]

 print(arrayClasses)


 struct Students {
     var name: String
     var surname: String
     var dateOfBirth: Int
     var averageScore: Double
 }

 var alex = Students(name: "Alex", surname: "Star", dateOfBirth: 2008, averageScore: 5)
 var sam = Students(name: "SAM", surname: "Det", dateOfBirth: 2006, averageScore: 4.6)
 var mark = Students(name: "Mark", surname: "Red", dateOfBirth: 2005, averageScore: 4.8)

 var array = [alex, sam, mark]

 print(array)

 func theDataOfEachStudent(array: [Students]) {
     for i in 0..<array.count {
         print("\(i+1). \(array[i].name) \(array[i].surname), birth year: \(2024 - array[i].dateOfBirth), average score: \(array[i].averageScore)")
     }
 }
 print(theDataOfEachStudent(array: array))

 let sorted = array.sorted { $0.averageScore > $1.averageScore }
 print(sorted)

 let surname = array.sorted(by: { $0.surname < $1.surname
 })
 print(surname)

 let new0 = Students(name: "New", surname: "New", dateOfBirth: 2005, averageScore: 0)
 var new = new0
 new.averageScore = 4.9
 new.dateOfBirth = 2008
 new.name = "NewName"

 print(new)

 print(array)
