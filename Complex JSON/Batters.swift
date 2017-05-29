//
//  Batters.swift
//  Complex JSON
//
//  Created by Kyle Lee on 5/28/17.
//  Copyright © 2017 Kyle Lee. All rights reserved.
//

import Foundation

struct Batters {
    
    let batters: [Batter]
    
    init?(json: JSON) {
        guard let batterJSON = json["batter"] as? [JSON] else { return nil }
        let batters = batterJSON.map({ Batter(json: $0)! })
        self.batters = batters
    }
}
