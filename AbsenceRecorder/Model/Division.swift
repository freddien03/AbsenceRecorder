//
//  Division.swift
//  AbsenceRecorder
//
//  Created by Freddie Nunn on 11/03/2021.
//

import Foundation

class Division: Codable {
    let code: String
    var students: [Student] = []
    var absences: [Absence] = []
    
    init(code: String) {
        self.code = code
    }

    func getAbsence(for date: Date) -> Absence? {
        return absences.first {
            let comparison = Calendar.current.compare($0.takenOn, to: date, toGranularity: .day)
            return comparison == .orderedSame
        }
    }
    
    func createAbsenceOrGetExistingIfAvailable(for date: Date) -> Absence {
        if let existingAbsence = getAbsence(for: date) {
            return existingAbsence
        } else {
            let absence = Absence(date: date, students: students)
            absences.append(absence)
            return absence
        }
    }
    
    #if DEBUG
    static func createDivision(code: String, of size: Int) -> Division {
        let division = Division(code: code)
        
        for i in 1...size {
            let student = Student(forename: "Firstname\(i)", surname: "Surname\(i)", birthday: Date())
            division.students.append(student)
        }
        
        return division
    }
    
    static let examples = [Division.createDivision(code: "vBY-1", of: 8), Division.createDivision(code: "vCX-1", of: 11), Division.createDivision(code: "vBZ-1", of: 12), Division.createDivision(code: "vCW-1", of: 9)]
    #endif
}
