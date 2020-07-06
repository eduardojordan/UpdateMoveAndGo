//
//  AlertMessage.swift
//  MoveAndGo
//
//  Created by MAC on 07/07/2020.
//  Copyright © 2020 EdJordan. All rights reserved.
//

import Foundation
import UIKit

extension UIViewController {
    
    func connectionAlert(title: String, message: String) {
        if !isInternetAvailable() {
            let alert = UIAlertController(title: title, message: message, preferredStyle: .alert)
            let action = UIAlertAction(title: "OK", style: .default, handler: nil)
            alert.addAction(action)
            self.present(alert, animated: true, completion: nil)
        }
    }    
}
