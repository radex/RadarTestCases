//
//  ViewController.swift
//  WebViewCopyCrash
//
//  Created by Radosław Pietruszewski on 09/08/16.
//  Copyright © 2016 Nozbe. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        // just add a webview
        
        let webView = UIWebView(frame: view.bounds)
        view.addSubview(webView)
        
        webView.loadHTMLString("<input type=text>", baseURL: nil)
        
    }
}

