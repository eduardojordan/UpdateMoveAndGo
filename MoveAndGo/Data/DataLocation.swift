//
//  DataLocation.swift
//  MoveAndGo
//
//  Created by MAC on 18/12/2019.
//  Copyright © 2019 EdJordan. All rights reserved.
//

import Foundation
import UIKit

enum DataError: Error {
    case taskError
    case httpResponseError
    case jsonError
    
    var localizedDescription: String {
        
        switch self {
        case .taskError: return "Request failed"
        case .httpResponseError: return "HTTP Response Error"
        case .jsonError: return "JSON Error"
            
        }
    }
}

func getAllDataLocation(completion: @escaping (([ModelLocation]) -> ())){
    
    let endPoint = "https://apidev.meep.me/tripplan/api/v1/routers/lisboa/resources?lowerLeftLatLon=38.711046,-9.160096&upperRightLatLon=38.739429,-9.137115"
    let urlString = URL(string: endPoint)
    
    let task = URLSession.shared.dataTask(with: urlString!) { data, response, error in
        if let httpResponse = response as? HTTPURLResponse {
            if 200...300 ~= httpResponse.statusCode {
                 guard let data = data else {return}
                do {
                    let decoder = JSONDecoder()
                    let json = try? decoder.decode([ModelLocation].self, from: data)
                    completion(json!)
                    throw DataError.jsonError
                } catch {
                    print(error)
                    print("Error Occured in json ->", DataError.jsonError)
                }
            } else {
                print("Error Occured in httpResponse ->",DataError.httpResponseError)
            }
        } else{
            print("Error Occured in Server ->",DataError.taskError)
        }
    }
    task.resume()
}


