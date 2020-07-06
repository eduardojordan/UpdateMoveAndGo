//
//  InternetCheck.swift
//  MoveAndGo
//
//  Created by MAC on 07/07/2020.
//  Copyright © 2020 EdJordan. All rights reserved.
//

import Foundation
import SystemConfiguration

func isInternetAvailable() -> Bool
  {
      var zeroAddress = sockaddr_in()
      zeroAddress.sin_len = UInt8(MemoryLayout.size(ofValue: zeroAddress))
      zeroAddress.sin_family = sa_family_t(AF_INET)

      let defaultRouteReachability = withUnsafePointer(to: &zeroAddress) {
          $0.withMemoryRebound(to: sockaddr.self, capacity: 1) {zeroSockAddress in
              SCNetworkReachabilityCreateWithAddress(nil, zeroSockAddress)
          }
      }

      var flags = SCNetworkReachabilityFlags()
      if !SCNetworkReachabilityGetFlags(defaultRouteReachability!, &flags) {
          return false
      }
      let isReachable = flags.contains(.reachable)
      let needsConnection = flags.contains(.connectionRequired)
      return (isReachable && !needsConnection)
  }

