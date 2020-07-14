//
//  ViewController.swift
//  Parking
//
//  Created by Zarius Dubash on 1/17/20.
//  Copyright © 2020 Zarius Dubash. All rights reserved.
//

import UIKit
import WebKit

class ViewController: UITableViewController, WKNavigationDelegate {
    var webView: WKWebView!
    
    override func loadView() {
        webView = WKWebView()
        webView.navigationDelegate = self
        view = webView
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        
        // 1
        let url = URL(string: "https://drive.google.com/open?id=1rUHKlVMA7_Bc1Ab3v_rLvaPbsxAQuZvE&usp=sharing")!
        webView.load(URLRequest(url: url))
        
        // 2
        let refresh = UIBarButtonItem(barButtonSystemItem: .refresh, target: webView, action: #selector(webView.reload))
        toolbarItems = [refresh]
        navigationController?.isToolbarHidden = false
    }
    
    func webView(_ webView: WKWebView, didFinish navigation: WKNavigation!) {
        title = webView.title
    }


}
