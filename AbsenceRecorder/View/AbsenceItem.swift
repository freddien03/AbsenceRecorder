//
//  AbsenceItem.swift
//  AbsenceRecorder
//
//  Created by Freddie Nunn on 16/03/2021.
//

import SwiftUI

struct AbsenceItem: View {
    @ObservedObject var studentAbsence: StudentAbsence
    
    var body: some View {
        HStack {
            Text("\(studentAbsence.student.forename)")
            Spacer()
            if studentAbsence.isAbsent {
                Button("❌", action: { toggleAbsent() })
            }else{
                Button("✔️", action: { toggleAbsent() })
            }
            
        }
    }
    
    func toggleAbsent() {
//        if isPresent {
//            isPresent = false
//        }else{
//            isPresent = true
//        }
        studentAbsence.isAbsent.toggle()
    }
}

struct AbsenceItem_Previews: PreviewProvider {
    static var previews: some View {
        AbsenceItem(studentAbsence: StudentAbsence.example)
    }
}
