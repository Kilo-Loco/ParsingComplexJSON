//
//  Item.swift
//  Complex JSON
//
//  Created by Kyle Lee on 5/28/17.
//  Copyright © 2017 Kyle Lee. All rights reserved.
//

import Foundation

struct Item {
    
    let batters: Batters
    
    init?(json: JSON) {
        guard let battersJSON = json["batters"] as? JSON else { return nil }
        self.batters = Batters(json: battersJSON)!
    }
}
