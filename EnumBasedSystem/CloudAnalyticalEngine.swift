//
//  CloudAnalyticalEngine.swift
//  EnumBasedSystem
//
//  Created by Harsimrat on 26/01/23.
//

import Foundation
import CloudKit

class CloudAnalyticalEngine: AnalyticalEngine {
    
    private let database: [String]
    
    init(database: [String] = [String]()) {
        self.database = database
    }
    
    func sendAnalyticsEvent(name: String, metaData: [String : String]) {
        print("Log name:\(name) and Data record \(metaData)")
    }
}
