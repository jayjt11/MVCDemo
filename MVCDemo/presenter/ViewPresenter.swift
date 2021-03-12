//
//  ViewPresenter.swift
//  MVCDemo
//
//  Created by Jayant Tiwari on 09/03/21.
//  Copyright © 2021 Expleo. All rights reserved.
//

import UIKit
import Foundation

protocol PresenterView: class {
    func updateLabel()
}

class ViewPresenter {
    
    var presenterView : PresenterView
    
    init(presenterView : PresenterView) {
        self.presenterView = presenterView
    }
    
    var count = 0;
    
    func btnTapped() {
        count = count + 1
        if count == 5 {
            self.presenterView.updateLabel()
        }
    }
}
