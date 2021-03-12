//
//  DivisionItem.swift
//  AbsenceRecorder
//
//  Created by Freddie Nunn on 12/03/2021.
//

import SwiftUI

struct DivisionItem: View {
    var division: Division
    
    var body: some View {
        HStack {
            Image(systemName: "\(division.Students.count).circle")
            Text("\(division.code)")
        }
    }
}

struct DivisionItem_Previews: PreviewProvider {
    static var previews: some View {
        DivisionItem(division: Division(code: "vBY-1"))
    }
}
