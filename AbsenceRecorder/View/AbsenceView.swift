//
//  AbsenceView.swift
//  AbsenceRecorder
//
//  Created by Freddie Nunn on 16/03/2021.
//

import SwiftUI

struct AbsenceView: View {
    let absence: Absence
    
    var body: some View {
        List(absence.studentAbsences, id: \.self.student.forename) { StudentAbsence in
            AbsenceItem(studentAbsence: StudentAbsence)
        }
    }
}

struct AbsenceView_Previews: PreviewProvider {
    static var previews: some View {
        AbsenceView(absence: Absence.example)
    }
}
