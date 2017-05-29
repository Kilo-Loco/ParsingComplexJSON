//
//  Batter.swift
//  Complex JSON
//
//  Created by Kyle Lee on 5/28/17.
//  Copyright © 2017 Kyle Lee. All rights reserved.
//

import Foundation

struct Batter {
    
    let id: String
    let type: String
    
    init?(json: JSON) {
        guard let id = json["id"] as? String,
            let type = json["type"] as? String
            else { return nil }
        
        self.id = id
        self.type = type
        
    }
}
