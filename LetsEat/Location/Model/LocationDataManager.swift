//
//  LocationDataManager.swift
//  LetsEat
//
//  Created by Emilio Jose Ojeda Cano on 06/03/2020.
//  Copyright © 2020 Emilio Jose Ojeda Cano. All rights reserved.
//

import Foundation

class LocationDataManager: DataManager {
    
    private var locations: [String] = []
    
    func fetch() {
        for location in load(file: "ExploreData") {
            if let city = location["city"] as? String, let state = location["state"] as? String {
                locations.append("\(city), \(state)")
            }
        }
    }
    
    func numberOfRows() -> Int {
        return locations.count
    }
    
    func locationItem(at index: IndexPath) -> String {
        return locations[index.item]
    }
}
