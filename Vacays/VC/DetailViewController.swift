//
//  DetailViewController.swift
//  Vacays
//
//  Created by Jiangyong Xu on 11/10/19.
//  Copyright © 2019 Jiangyong Xu. All rights reserved.
//

import UIKit
import CoreLocation

class DetailViewController: UIViewController {
    @IBOutlet weak var detailImage: UIImageView!
    @IBOutlet weak var detailTitle: UILabel!
    @IBOutlet weak var detailDate: UILabel!
    @IBOutlet weak var detailLocation: UILabel!
    @IBOutlet weak var detailCost: UILabel!
    @IBOutlet weak var detailDP: UIDatePicker!
    
    var index: Int?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
}

