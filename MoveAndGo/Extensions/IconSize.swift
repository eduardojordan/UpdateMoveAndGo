//
//  Extensions.swift
//  MoveAndGo
//
//  Created by MAC on 06/07/2020.
//  Copyright © 2020 EdJordan. All rights reserved.
//

import Foundation
import UIKit
import GoogleMaps


extension GMSMarker {
    
    func setIconSize(scaledToSize newSize: CGSize) {
        UIGraphicsBeginImageContextWithOptions(newSize, false, 0.0)
        icon?.draw(in: CGRect(x: 0, y: 0, width: newSize.width, height: newSize.height))
        let newImage: UIImage = UIGraphicsGetImageFromCurrentImageContext()!
        UIGraphicsEndImageContext()
        icon = newImage
    }
}
