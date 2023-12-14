//
//  Student.swift
//  swifthomework5
//
//  Created by Томик on 12.12.23.
//

import Foundation

class Student {
    var id: Int
    var name: String
    var lastName: String
    var age: Int
    var subjects: [Subject]
    var teacher: Teacher?
    
    init(id: Int, name: String, lastName: String, age: Int) {
        self.id = id
        self.name = name
        self.lastName = lastName
        self.age = age
        self.subjects = []
    }
    
    // Метод для добавления предмета
    func addSubject(subjectName: String) {
            let subject = Subject(subjectName: subjectName)
            subjects.append(subject)
        print("The student started learning \(subjectName)")
        }
    
    // Метод для установки возраста студента
    func addAge(age: Int) {
        self.age = age
        print("The student's age is \(age)")
    }
    
    // Метод для установки имени студента
    func addName(name: String) {
        self.name = name
        print("The student's name is \(name)")
    }
    
    
    // Метод для связывания студента с учителем
    func assignTeacher(teacher: Teacher) {
        self.teacher = teacher
        teacher.assignStudent(student: self)
        print("Teacher is \(teacher)")
    }
    
    // Метод для получения информации о студенте и его предметах
    
    func getStudentInfo(name: String, lastName: String, subjects: [Subject]) {
        self.name = name
        self.lastName = lastName
        self.subjects = []
        print("Student is \(name) \(lastName). The student learns \(subjects)")
    }


    
}
