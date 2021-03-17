//
//  AbsenceRecorderApp.swift
//  AbsenceRecorder
//
//  Created by Freddie Nunn on 10/03/2021.
//

import SwiftUI

@main
struct AbsenceRecorderApp: App {
    var body: some Scene {
        WindowGroup {
            RootTabView()
                .environmentObject(StateController())
        }
    }
}
