//
//  TestData.swift
//  CreditCards
//
//  Created by Roman Churkin on 24.05.2020.
//  Copyright © 2020 Firmach. All rights reserved.
//

import UIKit


enum TestData {
    
    static let cards = [
        Card(balance: 395,
         cardNumber: "5191 0989 7648 6539",
         cardHolderName: "Firstname Lastname",
         serviceLogo: #imageLiteral(resourceName: "mc_logo"),
         color: UIColor(named: "cardColor1")!),
        
    Card(balance: 200,
         cardNumber: "5220 0439 4119 9351",
         cardHolderName: "Firstname Lastname",
         serviceLogo: #imageLiteral(resourceName: "mc_logo"),
         color: UIColor(named: "cardColor2")!),
    
    Card(balance: 4500,
         cardNumber: "5250 4192 4112 9509",
         cardHolderName: "Firstname Lastname",
         serviceLogo: #imageLiteral(resourceName: "mc_logo"),
         color: UIColor(named: "cardColor3")!),
    
    Card(balance: 153,
         cardNumber: "5450 4667 4286 8356",
         cardHolderName: "Firstname Lastname",
         serviceLogo: #imageLiteral(resourceName: "mc_logo"),
         color: UIColor(named: "cardColor4")!)
    ]
    
}
