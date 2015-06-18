//
//  ViewController.swift
//  tablasProfaRosa
//
//  Created by guitarrkurt on 18/06/15.
//  Copyright (c) 2015 BUAP. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var itemDetail: String? {
        didSet{
            configureView()
        }
    }
    func configureView(){
        if itemDetail != nil && label != nil{
            label.text = itemDetail
        }
    }
    
    @IBOutlet weak var label: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        configureView()
    }
    

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

