//
//  ViewController.swift
//  KeyboardDoesntHideOnInputDelete
//
//  Created by Radosław Pietruszewski on 12/08/16.
//  Copyright © 2016 Nozbe. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let webView = UIWebView(frame: view.bounds)
        view.addSubview(webView)
        
        webView.loadRequest(NSURLRequest(URL: NSBundle.mainBundle().URLForResource("index", withExtension: "html")!))
    }

}

