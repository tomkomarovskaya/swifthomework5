//
//  ViewController.swift
//  swifthomework5
//
//  Created by Томик on 11.12.23.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
//      Создание учителя
//      Учитель 1
        let mathTeacher = Teacher(id: 001, firstName: "John", lastName: "Doe")
        mathTeacher.addSubjectTaught(subjectTaughtName: "Math")
//      Учитель 2
        let economyTeacher = Teacher(id: 002, firstName: "Mary", lastName: "Thomson")
        economyTeacher.addSubjectTaught(subjectTaughtName: "Economy")
        
//      Создание предметов
        let subject1 = Subject(subjectName: "Math")
        let subject2 = Subject(subjectName: "Economy")

    
//      Создание студентов
        let student1 = Student(id: 1, name: "Alice", lastName: "Simpson", age: 20)
        let student2 = Student(id: 2, name: "Bob", lastName: "Maguire", age: 21)
        
//      Добавляем ученикам предметы
        student1.addSubject(subjectName: subject1.subjectName)
        student2.addSubject(subjectName: subject2.subjectName)
        
//      Устанавливаем студентам возраст
        student1.addAge(age: 22)
        student2.addAge(age: 23)
        
//      Связываем студента с учителем
        student1.assignTeacher(teacher: mathTeacher)
        student2.assignTeacher(teacher: economyTeacher)
        
//      Метод для получения информации о студенте и его предметах
        student1.getStudentInfo(name: student1.name, lastName: student1.lastName, subjects: [subject1])
        student2.getStudentInfo(name: student2.name, lastName: student2.lastName, subjects: [subject2])
        
//      Метод для добавления предмета, который ведет учитель
        mathTeacher.addSubjectTaught(subjectTaughtName: subject1.subjectName)
        economyTeacher.addSubjectTaught(subjectTaughtName: subject2.subjectName)
        
//      Метод для установки оценки ученику по определенному предмету
        mathTeacher.setGrade(for: student1, subject: subject1, grade: "A+")
        economyTeacher.setGrade(for: student2, subject: subject2, grade: "B")
        
//      Метод для получения информации об учителе и предметах, которые он ведет
        mathTeacher.getTeacherInfo(firstName: mathTeacher.firstName, lastName: mathTeacher.lastName, subjectsTaught: [subject1])
        economyTeacher.getTeacherInfo(firstName: economyTeacher.firstName, lastName: economyTeacher.lastName, subjectsTaught: [subject2])
        
//      Добавление ученика
        mathTeacher.assignStudent(student: student1)
        economyTeacher.assignStudent(student: student2)
        
        
        
    }


}

