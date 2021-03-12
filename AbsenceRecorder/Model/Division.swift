//
//  Division.swift
//  AbsenceRecorder
//
//  Created by Freddie Nunn on 11/03/2021.
//

import Foundation

class Division {
    let code: String
    var Students: [Student] = []
    
    init(code: String) {
        self.code = code
    }
    
    #if DEBUG
    static func createDivision(code: String, of size: Int) -> Division {
        let division = Division(code: code)
        
        for i in 1...size {
            let student = Student(forename: "Firstname\(i)", surname: "Surname\(i)", birthday: Date())
            division.Students.append(student)
        }
        
        return division
    }
    
    static let examples = [Division.createDivision(code: "vBY-1", of: 8), Division.createDivision(code: "vCX-1", of: 11), Division.createDivision(code: "vBZ-1", of: 12), Division.createDivision(code: "vCW-1", of: 9)]
    #endif
}
