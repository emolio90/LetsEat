//
//  DataManager.swift
//  LetsEat
//
//  Created by Emilio Jose Ojeda Cano on 09/03/2020.
//  Copyright © 2020 Emilio Jose Ojeda Cano. All rights reserved.
//

import Foundation

protocol DataManager {
    func load(file name: String) -> [[String:AnyObject]]
}

extension DataManager {
    func load(file name: String) -> [[String:AnyObject]] {
        guard let path = Bundle.main.path(forResource: name, ofType: "plist"), let items = NSArray(contentsOfFile: path) else {
            return [[:]]
        }
        return items as! [[String:AnyObject]]
    }
}
