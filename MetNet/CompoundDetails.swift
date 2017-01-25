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
        1 : (title: "Information",
             description: "Here's how to use the app!"),
        2 : (title: "Galactose",
             description: "Galactose is a monosaccharide hexose that is made from the catabolism of lactose into galactose and glucose. \n\nReactivity: Galactose undergoes phosphorylation by galactokinase, and then galactose-1-phosphate uridyl transferase and an epimerase finish the conversion of galactose to glucose."),
        3 : (title: "Glucose",
             description: "Glucose is a monosaccharide hexose. The body tries to maintain homeostatic levels of blood glucose at about 5.5 mM (100 mg/dL).\n\nSynthesis: Blood glucose can be introduced by -\n(1) the breakdown of sugars: fructose, galactose, maltose, and sucrose catabolism for example, will all yield glucose monomers\n(2) glycogenolysis: during the post-absorptive state, the intial response of decreasing blood suguar is for the liver to start catabolizing glycogen reserves to release glucose into the blood stream\n(3) gluconeogenesis: the brain largely prefers glucose as a source of energy. As a result if blood glucose levels run low, the liver and renal cortex will compensate by performing gluconeogenesis and releasing the newly formed glucose to the blood\n(4) uptake from serum: hepatocytes and pancreatic islet beta cells have a GLUT2 low-affinity glucose receptor such that they uptake glucose proportional to the serum level, on the other hand adipocytes and muscle cells have a GLUT4 high-affinity glucose receptor such that they import glucose whenever available.\n\nReactivity: Glucose "),
        4 : (title: "4",
             description: "Here's some info"),
        5 : (title: "5",
             description: "Here's some info"),
        6 : (title: "6",
             description: "Here's some info"),
        7 : (title: "7",
             description: "Here's some info"),
        8 : (title: "8",
             description: "Here's some info"),
        9 : (title: "9",
             description: "Here's some info"),
        10 : (title: "10",
              description: "Here's some info"),
        11 : (title: "11",
              description: "Here's some info"),
        12 : (title: "12",
              description: "Here's some info"),
        13 : (title: "13",
              description: "Here's some info"),
        14 : (title: "14",
              description: "Here's some info"),
        15 : (title: "15",
              description: "Here's some info"),
        16 : (title: "16",
              description: "Here's some info"),
        17 : (title: "17",
              description: "Here's some info"),
        18 : (title: "18",
              description: "Here's some info"),
        19 : (title: "19",
              description: "Here's some info"),
        20 : (title: "20",
              description: "Here's some info"),
        21 : (title: "21",
              description: "Here's some info"),
        22 : (title: "22",
              description: "Here's some info"),
        23 : (title: "23",
              description: "Here's some info"),
        24 : (title: "24",
              description: "Here's some info"),
        25 : (title: "25",
              description: "Here's some info"),
        26 : (title: "26",
              description: "Here's some info"),
        27 : (title: "27",
              description: "Here's some info"),
        28 : (title: "28",
              description: "Here's some info"),
        29 : (title: "29",
              description: "Here's some info"),
        30 : (title: "30",
              description: "Here's some info"),
        31 : (title: "31",
              description: "Here's some info"),
        32 : (title: "32",
              description: "Here's some info"),
        33 : (title: "33",
              description: "Here's some info"),
        34 : (title: "34",
              description: "Here's some info"),
        35 : (title: "35",
              description: "Here's some info"),
        36 : (title: "36",
              description: "Here's some info"),
        37 : (title: "37",
              description: "Here's some info"),
        38 : (title: "38",
              description: "Here's some info"),
        39 : (title: "39",
              description: "Here's some info"),
        40 : (title: "40",
              description: "Here's some info"),
        41 : (title: "41",
              description: "Here's some info"),
        42 : (title: "42",
              description: "Here's some info"),
        43 : (title: "43",
              description: "Here's some info"),
        44 : (title: "44",
              description: "Here's some info"),
        45 : (title: "45",
              description: "Here's some info"),
        46 : (title: "46",
              description: "Here's some info"),
        47 : (title: "47",
              description: "Here's some info"),
        48 : (title: "48",
              description: "Here's some info"),
        49 : (title: "49",
              description: "Here's some info"),
        50 : (title: "50",
              description: "Here's some info"),
        51 : (title: "51",
              description: "Here's some info"),
        52 : (title: "52",
              description: "Here's some info"),
        53 : (title: "53",
              description: "Here's some info"),
        54 : (title: "54",
              description: "Here's some info"),
        55 : (title: "55",
              description: "Here's some info"),
        56 : (title: "56",
              description: "Here's some info"),
        57 : (title: "57",
              description: "Here's some info"),
        58 : (title: "58",
              description: "Here's some info"),
        59 : (title: "59",
              description: "Here's some info"),
        60 : (title: "60",
              description: "Here's some info"),
        61 : (title: "61",
              description: "Here's some info"),
        62 : (title: "62",
              description: "Here's some info"),
        63 : (title: "63",
              description: "Here's some info"),
        64 : (title: "64",
              description: "Here's some info"),
        65 : (title: "65",
              description: "Here's some info"),
        66 : (title: "66",
              description: "Here's some info"),
        67 : (title: "67",
              description: "Here's some info"),
        68 : (title: "68",
              description: "Here's some info"),
        69 : (title: "69",
              description: "Here's some info"),
        70 : (title: "70",
              description: "Here's some info"),
        71 : (title: "71",
              description: "Here's some info"),
        72 : (title: "72",
              description: "Here's some info"),
        73 : (title: "73",
              description: "Here's some info"),
        74 : (title: "74",
              description: "Here's some info"),
        75 : (title: "75",
              description: "Here's some info"),
        76 : (title: "76",
              description: "Here's some info"),
        77 : (title: "77",
              description: "Here's some info"),
        78 : (title: "78",
              description: "Here's some info"),
        79 : (title: "79",
              description: "Here's some info"),
        80 : (title: "80",
              description: "Here's some info"),
        81 : (title: "81",
              description: "Here's some info"),
        82 : (title: "82",
              description: "Here's some info"),
        83 : (title: "83",
              description: "Here's some info"),
        84 : (title: "84",
              description: "Here's some info"),
        85 : (title: "85",
              description: "Here's some info"),
        86 : (title: "86",
              description: "Here's some info"),
        87 : (title: "87",
              description: "Here's some info"),
        88 : (title: "88",
              description: "Here's some info"),
        89 : (title: "89",
              description: "Here's some info"),
        90 : (title: "90",
              description: "Here's some info"),
        91 : (title: "91",
              description: "Here's some info"),
        92 : (title: "92",
              description: "Here's some info"),
        93 : (title: "93",
              description: "Here's some info"),
        94 : (title: "94",
              description: "Here's some info"),
        95 : (title: "95",
              description: "Here's some info"),
        96 : (title: "96",
              description: "Here's some info"),
        97 : (title: "97",
              description: "Here's some info"),
        98 : (title: "98",
              description: "Here's some info"),
        99 : (title: "99",
              description: "Here's some info"),
        100 : (title: "100",
               description: "Here's some info"),
        101 : (title: "101",
               description: "Here's some info"),
        102 : (title: "102",
               description: "Here's some info"),
        103 : (title: "103",
               description: "Here's some info"),
        104 : (title: "104",
               description: "Here's some info"),
        105 : (title: "105",
               description: "Here's some info"),
        106 : (title: "106",
               description: "Here's some info"),
        107 : (title: "107",
               description: "Here's some info"),
        108 : (title: "108",
               description: "Here's some info"),
        109 : (title: "109",
               description: "Here's some info"),
        110 : (title: "110",
               description: "Here's some info"),
        111 : (title: "111",
               description: "Here's some info"),
        112 : (title: "112",
               description: "Here's some info"),
        113 : (title: "113",
               description: "Here's some info"),
        114 : (title: "114",
               description: "Here's some info"),
        115 : (title: "115",
               description: "Here's some info"),
        116 : (title: "116",
               description: "Here's some info"),
        117 : (title: "117",
               description: "Here's some info"),
        118 : (title: "118",
               description: "Here's some info"),
        119 : (title: "119",
               description: "Here's some info"),
        120 : (title: "120",
               description: "Here's some info"),
        121 : (title: "121",
               description: "Here's some info"),
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
