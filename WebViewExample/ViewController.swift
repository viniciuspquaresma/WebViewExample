//
//  ViewController.swift
//  WebViewExample
//
//  Created by wayou on 10/26/18.
//  Copyright © 2018 wayou. All rights reserved.
//
//  references:
//  - https://www.hackingwithswift.com/read/4/2/creating-a-simple-browser-with-wkwebview
//  - https://stackoverflow.com/questions/49638653/load-local-web-files-resources-in-wkwebview


import UIKit
import WebKit

class ViewController: UIViewController,WKNavigationDelegate {
    
    @IBOutlet weak var webView: WKWebView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
//        load remote url
        let url = URL(string: "https://www.mercadopago.com.br/checkout/v1/redirect?pref_id=438050834-36b33107-3f50-4678-ae51-d5b1eda5c96e")!
        webView.load(URLRequest(url: url))
        webView.allowsBackForwardNavigationGestures = true
        
//        load local html file
//        let url = Bundle.main.url(forResource: "example", withExtension: "html", subdirectory: "local_html")!
//        webView.loadFileURL(url, allowingReadAccessTo: url)
//        let request = URLRequest(url: url)
//        webView.load(request)
    }
    
    override func loadView() {
        webView = WKWebView()
        webView.navigationDelegate = self
        view = webView
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
}

