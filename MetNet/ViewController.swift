//
//  ViewController.swift
//  MetNet
//
//  Created by Alexander Munoz on 1/20/17.
//  Copyright © 2017 Alexander Munoz. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UIPopoverPresentationControllerDelegate {

    
    @IBOutlet weak var bkgrdScrollView: UIScrollView!
    @IBOutlet var compoundButtons: [UIButton]!
    
    var compoundSelectedTag = Int()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        bkgrdScrollView.contentSize.height = 1500
        bkgrdScrollView.contentSize.width = 1500
        
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func compoundButtonTapped(_ sender: Any) {

        self.compoundSelectedTag = (sender as AnyObject).tag
        performSegue(withIdentifier: "toCompoundDetailsSegue", sender: self)
        
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "toCompoundDetailsSegue" {
            let destViewController : CompoundDetails = segue.destination as! CompoundDetails
            let controller = destViewController.popoverPresentationController
            if controller != nil {
                controller?.delegate = self
            }
            destViewController.compoundSelectedTag = self.compoundSelectedTag
        }
    }
    
    // don't allow modal segue, force a popover segue
    func adaptivePresentationStyle(for controller: UIPresentationController) -> UIModalPresentationStyle {
        return .none
    }
    
    
}


