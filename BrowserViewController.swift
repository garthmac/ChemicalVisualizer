//
//  BrowserViewController.swift
//  ChemicalVisualizer
//
//  Created by iMac 27 on 2015-12-14.
//  Copyright © 2015 Garth MacKenzie. All rights reserved.
//

import UIKit
import WebKit

class BrowserViewController: UIViewController, UIWebViewDelegate {
    var url = ""
    var nsurl: NSURL? {
        didSet {
            if view.window != nil {
                loadURL()
            }
        }
    }
    private func loadURL() {
        if url == ViewController.Constants.DemoURL {
            allowHTTP = true
        }
        if nsurl != nil {
            if allowHTTP {
                UIApplication.sharedApplication().openURL(nsurl!)
            }
            else {  //cache it
                let request = NSURLRequest(URL: nsurl!)
                webView.loadRequest(request)
            }
        }
    }
    @IBOutlet weak var webView: UIWebView!  //WKWebView
    @IBOutlet weak var spinner: UIActivityIndicatorView!
    //MARK: IBAction
    @IBAction func unwind(sender: UIButton) {
        if let vc = presentingViewController as? ViewController {
            vc.unwindFromModalViewController(nil)
        }
    }
    override func viewDidLoad() {
        super.viewDidLoad()
//        let button = UIButton(frame: CGRect(origin: CGPoint(x: 0, y: 28), size: CGSize(width: 160, height: 30)))   //WKWebView
//        button.setTitle("◁Back to Chem 3D", forState: .Normal)
//        button.setTitleColor(UIColor.redColor(), forState: .Normal)
//        button.addTarget(self, action: "unwind:", forControlEvents: .TouchUpInside)
//        webView.addSubview(button)
        webView.delegate = self
        //webView.scalesPageToFit = true
        loadURL()
    }
    override func viewDidAppear(animated: Bool) {
        super.viewDidAppear(animated)
        if allowHTTP {
            dismissViewControllerAnimated(true, completion: nil)
        }
    }
    var allowHTTP = false
    // MARK: - UIWebView delegate
    var activeDownloads = 0
    func webViewDidStartLoad(webView: UIWebView) {
        activeDownloads++
        spinner.startAnimating()
    }
    func webViewDidFinishLoad(webView: UIWebView) {
        activeDownloads--
        if activeDownloads < 1 {
            spinner.stopAnimating()
        }
    }
    func sendRequest() {
            }

}
