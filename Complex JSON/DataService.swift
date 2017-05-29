//
//  DataService.swift
//  Complex JSON
//
//  Created by Kyle Lee on 5/28/17.
//  Copyright © 2017 Kyle Lee. All rights reserved.
//

import Foundation

typealias JSON = [String: Any]

class DataService {
    
    private init() {}
    static let shared = DataService()
    
    func getData(completion: (Data) -> Void) {
        guard let path = Bundle.main.path(forResource: "ComplexJSON", ofType: "txt") else { return }
        let url = URL(fileURLWithPath: path)
        do {
            let data = try Data(contentsOf: url)
            completion(data)
        } catch {
            print(error)
        }
        
    }
    
}
