//
//  HostingController.swift
//  CreditCards
//
//  Created by Roman Churkin on 24.05.2020.
//  Copyright © 2020 Firmach. All rights reserved.
//

import SwiftUI


// using this to provide .lightContent status bar style
class HostingController<T: View>: UIHostingController<T> {
    override var preferredStatusBarStyle: UIStatusBarStyle {
        return .lightContent
    }
}
