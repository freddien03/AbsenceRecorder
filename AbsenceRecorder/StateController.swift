//
//  StateController.swift
//  AbsenceRecorder
//
//  Created by Freddie Nunn on 16/03/2021.
//

import Foundation

class StateController: ObservableObject {
    @Published var divisions: [Division]
    
    init() {
        divisions = Division.examples
    }
}
