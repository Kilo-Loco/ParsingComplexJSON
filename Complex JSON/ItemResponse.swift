//
//  ItemResponse.swift
//  Complex JSON
//
//  Created by Kyle Lee on 5/28/17.
//  Copyright © 2017 Kyle Lee. All rights reserved.
//

import Foundation

struct ItemResponse {
    
    let items: [Item]
    
    
    init?(json: JSON) {
        guard let items = json["items"] as? JSON else { return nil }
        guard let itemArray = items["item"] as? [JSON] else { return nil }
        let itemObjects = itemArray.map({ Item(json: $0)! })
        self.items = itemObjects
    }
}
