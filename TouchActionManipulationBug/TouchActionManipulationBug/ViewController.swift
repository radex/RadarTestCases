//
//  ViewController.swift
//  TouchActionManipulationBug
//
//  Created by Radosław Pietruszewski on 11/08/16.
//  Copyright © 2016 Nozbe. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let webView = UIWebView(frame: view.bounds)
        view.addSubview(webView)
        
        webView.loadRequest(URLRequest(url: Bundle.main.url(forResource: "touchaction", withExtension: "html")!))
    }
}

