//
//  VacayItem.swift
//  Vacays
//
//  Created by Jiangyong Xu on 11/9/19.
//  Copyright © 2019 Jiangyong Xu. All rights reserved.
//

import Foundation
import UIKit

enum CodingKeys: String, CodingKey {
    case image, date, title, location, uid, cost
}

class VacayItem: Codable {
    var image: UIImage?
    var date: Date
    var title: String
    var cost: Int
    var location: String
    var uid: UUID
    
    init() {
        self.image = UIImage(named: "123")
        self.date = Date()
        self.title = "Untitled"
        self.location = "Unknown"
        self.uid = UUID()
        self.cost = 0
    }
    
    required init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        title = try container.decode(String.self, forKey: .title)
        date = try container.decode(Date.self, forKey: .date)
        location = try container.decode(String.self, forKey: .location)
        uid = try container.decode(UUID.self, forKey: .uid)
        cost = try container.decode(Int.self, forKey: .cost)
        
        if let imageData = try container.decodeIfPresent(Data.self, forKey: .image) {
            image = NSKeyedUnarchiver.unarchiveObject(with: imageData) as? UIImage
        } else {
            image = nil
        }
    }
    
    func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        
        try container.encode(title, forKey: .title)
        try container.encode(date, forKey: .date)
        try container.encode(location, forKey: .location)
        try container.encode(uid, forKey: .uid)
        try container.encode(cost, forKey: .cost)
        
        if let img = image {
            let imageData = NSKeyedArchiver.archivedData(withRootObject: img)
            try container.encode(imageData, forKey: .image)
        }
    }
    
}
