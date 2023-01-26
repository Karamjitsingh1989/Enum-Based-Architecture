//
//  AnalyticalManager.swift
//  EnumBasedSystem
//
//  Created by Harsimrat on 26/01/23.
//

import Foundation

class AnalyticalManager {
    
    private let engine : AnalyticalEngine
    
    init(engine: AnalyticalEngine) {
        self.engine = engine
    }
    
    func log(_ event: AnalyticsEvent) {
        engine.sendAnalyticsEvent(name: event.name, metaData: event.metadata)
    }
}
