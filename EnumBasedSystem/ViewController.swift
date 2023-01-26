//
//  ViewController.swift
//  EnumBasedSystem
//
//  Created by Harsimrat on 26/01/23.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        // Top Layer Api  interacted with Protocol
        let cloudAnalyticalEngine = CloudAnalyticalEngine()
        let manager = AnalyticalManager(engine: cloudAnalyticalEngine)
        let messageListViewController = MessageListViewController(analytics: manager)
        
        self.show(messageListViewController, sender: self)
        
        // Do any additional setup after loading the view.
    }


}

