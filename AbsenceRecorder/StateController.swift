//
//  StateController.swift
//  AbsenceRecorder
//
//  Created by Freddie Nunn on 16/03/2021.
//

import Foundation

class StateController: ObservableObject {
    @Published var divisions: [Division] = []
    
    init() {
        loadFromFile()
    }
    
    func getPath(name: String) -> URL {
        let paths = FileManager.default.urls(for: .documentDirectory, in: .userDomainMask)
        let userPath = paths[0]
        return userPath.appendingPathComponent(name)
    }
    
    func loadFromFile() {
        let url = getPath(name: "divisions.json")
        if let data = try? Data(contentsOf: url) {
            let decoder = JSONDecoder()
            if let loaded = try? decoder.decode([Division].self, from: data) {
                divisions = loaded
            }
        }
    }
    
    func saveToFile() {
        let encoder = JSONEncoder()
        if let encoded = try? encoder.encode(divisions) {
            if let json = String(data: encoded, encoding: .utf8){
                let url = getPath(name: "divisions.json")
                do {
                    try json.write(to: url, atomically: true, encoding: .utf8)
                } catch {
                    print(error.localizedDescription)
                }
            }
        }
    }
}
