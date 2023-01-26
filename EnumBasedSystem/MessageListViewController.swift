//
//  MessageListViewController.swift
//  EnumBasedSystem
//
//  Created by Harsimrat on 26/01/23.
//

import Foundation
import CloudKit
import UIKit

class MessageListViewController: UIViewController {
    //private let messages : MessageCollection
    
    private let analytics: AnalyticalManager
    
    init(analytics: AnalyticalManager) {
        self.analytics = analytics
        super.init(nibName: nil, bundle: nil)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func viewDidAppear(_ animated: Bool) {
       super.viewDidAppear(animated)
      
        analytics.log(.messageListView)
    }
    
    private func deleteMessage(at index: Int) {
        
       // let message
        
        
    }
    
}
