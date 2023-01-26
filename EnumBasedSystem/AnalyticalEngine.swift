//
//  AnalyticalEngine.swift
//  EnumBasedSystem
//
//  Created by Harsimrat on 26/01/23.
//

import Foundation

protocol AnalyticalEngine {
    func sendAnalyticsEvent(name: String, metaData:[String: String])
}
