//
//  ViewController.swift
//  CustomUILabel
//
//  Created by Siniša Vuković on 14/12/2017.
//  Copyright © 2017 Tvornica Snova. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var myView: MyUILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //label.text = "// Do any additional setup after loading the view, typically from a nib."
    }

    @IBAction func act(_ sender: Any) {
        myView.label.text = "Yuhiitsldjf"
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
    }

}

