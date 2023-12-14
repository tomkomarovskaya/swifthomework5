//
//  Teacher.swift
//  swifthomework5
//
//  Created by Томик on 12.12.23.
//

import Foundation

class Teacher {
    private var id: Int
    var firstName: String
    var lastName: String
    private var subjectsTaught: [Subject]
    private var studentsTaught: [Student]
    
    init(id: Int, firstName: String, lastName: String) {
        self.id = id
        self.firstName = firstName
        self.lastName = lastName
        self.subjectsTaught = []
        self.studentsTaught = []
    }
    
    // Метод для добавления предмета, который ведет учитель
    func addSubjectTaught(subjectTaughtName: String) {
        let subject = Subject(subjectName: subjectTaughtName)
        subjectsTaught.append(subject)
        print("The subjects are \(subjectTaughtName)")
    }
    
    // Метод для установки оценки ученику по определенному предмету
    func setGrade (for studentName: Student, subject: Subject, grade: String) {
        print ("The student \(studentName) got \(grade) for \(subject)")
    }
    
    // Метод для получения информации об учителе и предметах, которые он ведет
    func getTeacherInfo (firstName: String, lastName: String, subjectsTaught: [Subject]) {
        self.firstName = firstName
        self.lastName = lastName
        self.studentsTaught = []
        print("The teacher's name is \(firstName) \(lastName). The teacher teaches the following \(subjectsTaught)")
    }
    
    // Добавление ученика
    func assignStudent (student: Student) {
        studentsTaught.append(student)
        print("\(student) is his/her student")
    }
    
    
}
