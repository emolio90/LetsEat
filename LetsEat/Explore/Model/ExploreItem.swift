//
//  ExploreItem.swift
//  LetsEat
//
//  Created by Emilio Jose Ojeda Cano on 06/03/2020.
//  Copyright © 2020 Emilio Jose Ojeda Cano. All rights reserved.
//

import Foundation


struct ExploreItem {
    var name: String
    var image: String
}


extension ExploreItem {
    init(dict: [String:AnyObject]) {
        self.name = dict["name"] as! String
        self.image = dict["image"] as! String
    }
}
