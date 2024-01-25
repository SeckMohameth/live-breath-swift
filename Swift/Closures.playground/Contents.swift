import Foundation


struct Student {
    let name: String
    var testScores: Int
}


let students = [
    Student(name: "Mo", testScores: 100),
    Student(name: "Dom", testScores: 85),
    Student(name: "Alex", testScores: 79),
    Student(name: "Kay", testScores: 70)

]


//closure
var topStudentFilter: (Student) -> Bool = { student in
    return student.testScores > 80
    
}

//fuction
func topStudentFilterF(student: Student) -> Bool {
    return student.testScores > 70
}


let topStudents = students.filter(topStudentFilter)

for topStudent in topStudents {
    print(topStudent.name)
}
