//
//  StudentAbsence.swift
//  AbsenceRecorder
//
//  Created by Freddie Nunn on 16/03/2021.
//

import Foundation

class StudentAbsence: ObservableObject {
    let student: Student
    @Published var isAbsent: Bool
    
    init(student: Student) {
        self.student = student
        isAbsent = false
    }
    
    #if DEBUG
    static let example = StudentAbsence(student: Student.example)
    #endif
}
