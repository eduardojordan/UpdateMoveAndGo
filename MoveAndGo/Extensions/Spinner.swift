//
//  Spinner.swift
//  MoveAndGo
//
//  Created by MAC on 06/07/2020.
//  Copyright © 2020 EdJordan. All rights reserved.
//

import Foundation
import UIKit

fileprivate var aView: UIView?

extension UIViewController {

    func showSpinner(){
        aView = UIView(frame:  UIScreen.main.bounds)
        aView?.backgroundColor = UIColor.init(displayP3Red: 0.5, green: 0.5, blue: 0.5, alpha: 0.5)

        let activityIndicator = UIActivityIndicatorView(style: .medium)
        activityIndicator.center = aView!.center
        activityIndicator.startAnimating()
        aView?.addSubview(activityIndicator)
        self.view.addSubview(aView!)

    }
    
    func removeSpinner(){
        aView?.removeFromSuperview()
        aView = nil
    }
}
