//
//  AnalyticsEvent.swift
//  EnumBasedSystem
//
//  Created by Harsimrat on 26/01/23.
//

import Foundation

enum AnalyticsEvent {
    case loginScreennView
    case loginAttempt
    case loginSuccess
    case loginFailed(reason: String)
    case messageListView
    case messageSelected(index: Int)
    case messageDeleted(index: Int, read: Bool)
}

extension AnalyticsEvent {
    var name: String {
        switch self {
        case .loginScreennView, .loginAttempt,
             .loginSuccess, .messageListView:
            return String(describing: self)
        case .loginFailed:
            return "loginFailed"
        case .messageSelected:
            return "messageSelected"
        case .messageDeleted:
            return "messageDeleted"
        }
    }
}

extension AnalyticsEvent {
    var metadata: [String : String] {
        switch self {
        case .loginScreennView, .loginAttempt,
             .loginSuccess, .messageListView:
            return [:]
        case .loginFailed(let reason):
            return ["reason" : String(describing: reason)]
        case .messageSelected(let index):
            return ["index" : "\(index)"]
        case .messageDeleted(let index, let read):
            return ["index" : "\(index)", "read": "\(read)"]
        }
    }
}

