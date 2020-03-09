//
//  MapDataManager.swift
//  LetsEat
//
//  Created by Emilio Jose Ojeda Cano on 09/03/2020.
//  Copyright © 2020 Emilio Jose Ojeda Cano. All rights reserved.
//

import Foundation

class MapDataManager: DataManager {
    
    fileprivate var items:[RestaurantItem] = []
    
    var annotations: [RestaurantItem] {
        return items
    }
    
    func fetch(completion:(_ annotations:[RestaurantItem]) -> ()){
        if items.count > 0 { items.removeAll() }
        for data in load(file: "MapLocations") {
            items.append(RestaurantItem(dict: data))
        }
        completion(items)
    }
}
