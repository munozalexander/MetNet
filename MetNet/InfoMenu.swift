//
//  InfoMenu.swift
//  MetNet
//
//  Created by Alexander Munoz on 6/6/17.
//  Copyright © 2017 Alexander Munoz. All rights reserved.
//

import UIKit

class InfoMenu: UIViewController {

    // pdf titles
    let glucosePdf = "glucose"
    let glycogenPdf = "glycogen"
    let lipidPdf = "lipids"
    let tcaPdf = "tca"
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func glucoseButtonTapped(_ sender: Any) {
        loadPdfWithTitle(titleToLoad: glucosePdf)
    }
    
    @IBAction func glycogenButtonTapped(_ sender: Any) {
        loadPdfWithTitle(titleToLoad: glycogenPdf)
    }
    
    @IBAction func tcaButtonTapped(_ sender: Any) {
        loadPdfWithTitle(titleToLoad: tcaPdf)
    }

    @IBAction func lipidButtonTapped(_ sender: Any) {
        loadPdfWithTitle(titleToLoad: lipidPdf)
    }
    
    @IBAction func websiteButtonTapped(_ sender: Any) {
        let url = URL(string: "https://munozalexander.github.io/MetNet/")!
        if #available(iOS 10.0, *) {
            UIApplication.shared.open(url, options: [:], completionHandler: nil)
        }
        else {
            UIApplication.shared.openURL(url)
        }
    }
    
    @IBAction func doneButtonTapped(_ sender: Any) {
        self.dismiss(animated: true, completion: nil)
    }
    
    func loadPdfWithTitle(titleToLoad: String) {
        if let url = Bundle.main.url(forResource: titleToLoad, withExtension: "pdf") {
            let webview = UIWebView(frame: self.view.frame)
            let urlRequest = URLRequest(url: url)
            webview.loadRequest(urlRequest as URLRequest)
            webview.scalesPageToFit = true
            let pdfVC = UIViewController()
            pdfVC.view.addSubview(webview)
            pdfVC.title = titleToLoad
            self.navigationController?.pushViewController(pdfVC, animated: true)
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}
