//
//  CompoundDetails.swift
//  MetNet
//
//  Created by Alexander Munoz on 1/20/17.
//  Copyright © 2017 Alexander Munoz. All rights reserved.
//

import UIKit

class CompoundDetails: UIViewController {

    var compoundSelectedTag = Int()
    
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var contentLabel: UILabel!
    @IBOutlet weak var popupScrollView: UIScrollView!
    
    let compoundsInfo = [
        0 : (title: "Info",
             description: "Here's some info!"),
        1 : (title: "Galactose",
             description: "Galactose is a monosaccharide hexose that is made from the catabolism of lactose into galactose and glucose. \n\nReactivity: Galactose undergoes phosphorylation by galactokinase, and then galactose-1-phosphate uridyl transferase and an epimerase finish the conversion of galactose to glucose."),
        2 : (title: "Glucose",
             description: "Glucose is a monosaccharide hexose. The body tries to maintain homeostatic levels of blood glucose at about 5.5 mM (100 mg/dL).\n\nSynthesis: Blood glucose can be introduced by -\n(1) the breakdown of sugars: fructose, galactose, maltose, and sucrose catabolism for example, will all yield glucose monomers\n(2) glycogenolysis: during the post-absorptive state, the intial response of decreasing blood suguar is for the liver to start catabolizing glycogen reserves to release glucose into the blood stream\n(3) gluconeogenesis: the brain largely prefers glucose as a source of energy. As a result if blood glucose levels run low, the liver and renal cortex will compensate by performing gluconeogenesis and releasing the newly formed glucose to the blood\n(4) uptake from serum: hepatocytes and pancreatic islet beta cells have a GLUT2 low-affinity glucose receptor such that they uptake glucose proportional to the serum level, on the other hand adipocytes and muscle cells have a GLUT4 high-affinity glucose receptor such that they import glucose whenever available.\n\nReactivity: Glucose ")
    ]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let selectedCompoundInfo = compoundsInfo[compoundSelectedTag]
        if selectedCompoundInfo != nil {
            titleLabel.text = selectedCompoundInfo?.title
            contentLabel.text = selectedCompoundInfo?.description
        }
        else {
            titleLabel.text = "Oops!"
            contentLabel.text = "Something went wrong, please try again. If problems persist, please restart the app/your device."
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}
