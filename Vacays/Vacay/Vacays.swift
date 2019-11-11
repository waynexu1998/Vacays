//
//  vacays.swift
//  Vacays
//
//  Created by Jiangyong Xu on 11/9/19.
//  Copyright © 2019 Jiangyong Xu. All rights reserved.
//

import Foundation
import CoreLocation

class Vacays: Codable {
    
    var items = [VacayItem]()
    
    // MARK: - Utilty
    
    func add(title: String) {
        let vacayItem = VacayItem()
        vacayItem.title = title
        items.insert(vacayItem, at: 0)
    }
    
    func move(fromIndex: Int, toIndex: Int) {
        if fromIndex != toIndex {
            let item = items[fromIndex]
            items.remove(at: fromIndex)
            items.insert(item, at: toIndex)
        }
    }
    
    func removeItem(at index: Int) {
        if let _ = items[index] as VacayItem? {
            items.remove(at: index)
        }
    }
}


