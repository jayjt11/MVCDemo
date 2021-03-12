//
//  ViewController.swift
//  MVCDemo
//
//  Created by Jayant Tiwari on 08/03/21.
//  Copyright © 2021 Expleo. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var lblName: UILabel!
    
    var personController : PersonController?
    
    lazy var viewPresenter = ViewPresenter(presenterView: self)

    override func viewDidLoad() {
        super.viewDidLoad()
        personController = PersonController()
        
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    // custom listener
    
    @IBAction func btnSaveClicked(_ sender: Any) {
       // personController?.saveData()
        
        viewPresenter.btnTapped()
    }
    
    @IBAction func btnFetchClicked(_ sender: Any) {
        
        var fetchedName = personController?.getData()
        
        lblName.text = fetchedName
    }
}

extension ViewController : PresenterView {
    
    func updateLabel() {
        
        lblName.text = "Jayant"
        lblName.backgroundColor = UIColor.red
    }
    
    
}

