//
//  ViewController.swift
//  PropertyWrapper
//
//  Created by Benjamin DUMONT on 22/03/2022.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak private var label: UILabel!
    
    let viewModel = ViewModel()

    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    @IBAction func buttonPressed(_ sender: UIButton) {
        viewModel.updateData()
        viewModel.updateUI = { [weak self] newStr in
            self?.label.text = newStr
        }

    }
    

}

